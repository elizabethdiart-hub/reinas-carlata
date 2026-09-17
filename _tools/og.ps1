# Genera las vistas previas para redes (1200x630) de cada ficha: assets/og/<slug>.jpg
# Lo llama gen.sh con un TSV: slug, nombre, foto, recorte y0, recorte y1, agotado
# Sin precio a proposito: una imagen ya compartida por WhatsApp no se puede corregir,
# y el precio y las tallas cambian. En la imagen solo va lo que no caduca.
param([string]$Datos, [string]$Raiz)
Add-Type -AssemblyName System.Drawing

$W = 1200; $H = 630
$oro     = [System.Drawing.Color]::FromArgb(214, 178, 110)
$marfil  = [System.Drawing.Color]::FromArgb(240, 228, 212)
$vino1   = [System.Drawing.Color]::FromArgb(78, 17, 26)
$vino2   = [System.Drawing.Color]::FromArgb(26, 8, 11)
$fuente  = 'Garamond'
$tagline = "Env$([char]0xED)os a todo el Per$([char]0xFA)  $([char]0x00B7)  Yape, Plin o transferencia"
$tagSinStock = "Agotado por ahora  $([char]0x00B7)  Escr$([char]0xED)benos"
$gris = [System.Drawing.Color]::FromArgb(235, 90, 90, 90)

$dirOg = Join-Path $Raiz 'assets\og'
New-Item -ItemType Directory -Force $dirOg | Out-Null

# logo de la marca (PNG con fondo transparente) para la cabecera del panel
$logo = [System.Drawing.Image]::FromFile((Join-Path $Raiz 'assets\logo-reina-scarlata.png'))
$logoW = 225
$logoH = [int][Math]::Round($logo.Height * $logoW / $logo.Width)

$codec = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object { $_.MimeType -eq 'image/jpeg' }
$ep = New-Object System.Drawing.Imaging.EncoderParameters 1
$ep.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter ([System.Drawing.Imaging.Encoder]::Quality), ([long]88)

$tipografico = [System.Drawing.StringFormat]::GenericTypographic

function Espaciado($g, $texto, $font, $brush, $x, $y, $extra) {
  foreach ($ch in $texto.ToCharArray()) {
    $s = [string]$ch
    $g.DrawString($s, $font, $brush, [single]$x, [single]$y, $tipografico)
    $x += $g.MeasureString($s, $font, 1000, $tipografico).Width + $extra
  }
}

foreach ($linea in (Get-Content -LiteralPath $Datos -Encoding UTF8)) {
  if (-not $linea.Trim()) { continue }
  $c = $linea -split "`t"
  $slug = $c[0]; $nombreCompleto = $c[1]; $foto = $c[2]
  $y0 = [double]$c[3]; $y1 = [double]$c[4]
  $agotado = ($c.Count -gt 5 -and $c[5].Trim())

  # "Conjunto Reina de Rosas" -> tipo "Conjunto", nombre "Reina de Rosas"
  $partes = $nombreCompleto.Split(' ', 2)
  $tipo = $partes[0]; $nombre = $partes[1]

  # ---- recorte de la foto: franja vertical y0..y1 a todo el ancho ----
  $src = [System.Drawing.Image]::FromFile((Join-Path $Raiz "assets\$foto"))
  $sy = [int]($src.Height * $y0)
  $sh = [int]($src.Height * ($y1 - $y0))
  $sw = $src.Width; $sx = 0
  $pw = [int][Math]::Round($sw * $H / $sh)
  if ($pw -gt 640) { $pw = 640; $nsw = [int]($sh * 640 / $H); $sx = [int](($sw - $nsw) / 2); $sw = $nsw }
  $tw = $W - $pw

  $bmp = New-Object System.Drawing.Bitmap $W, $H
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.SmoothingMode     = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
  $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
  $g.PixelOffsetMode   = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
  $g.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::AntiAliasGridFit

  # ---- panel de texto ----
  $rect = New-Object System.Drawing.Rectangle 0, 0, $tw, $H
  $grad = New-Object System.Drawing.Drawing2D.LinearGradientBrush -ArgumentList $rect, $vino1, $vino2, ([single]55)
  $g.FillRectangle($grad, $rect)
  $g.DrawImage($src, (New-Object System.Drawing.Rectangle $tw, 0, $pw, $H), (New-Object System.Drawing.Rectangle $sx, $sy, $sw, $sh), [System.Drawing.GraphicsUnit]::Pixel)
  $src.Dispose()

  $bOro = New-Object System.Drawing.SolidBrush $oro
  $bMarfil = New-Object System.Drawing.SolidBrush $marfil
  $bGris = New-Object System.Drawing.SolidBrush $gris
  $g.FillRectangle($bOro, $tw - 2, 0, 4, $H)

  $x = 64; $maxW = $tw - 2 * $x

  # el PNG trae 6 px de margen transparente: lo compenso para que el logo cuadre con el texto
  $g.DrawImage($logo, (New-Object System.Drawing.Rectangle ($x - 3), 34, $logoW, $logoH))

  # nombre: lo más grande posible, en una línea o en dos (hasta 68 px)
  for ($s = 88; $s -ge 40; $s -= 2) {
    $fNombre = New-Object System.Drawing.Font $fuente, $s, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
    $alto = $fNombre.GetHeight($g)
    $med = $g.MeasureString($nombre, $fNombre, [int]$maxW)
    $lineas = [Math]::Round($med.Height / $alto)
    if ($lineas -le 1 -or ($lineas -le 2 -and $s -le 68)) { break }
    $fNombre.Dispose()
  }
  # un nombre de dos líneas ocupa 78 px más: subo el bloque para que no se pegue al pie
  $sube = if ($lineas -ge 2) { 26 } else { 0 }

  $fTipo = New-Object System.Drawing.Font $fuente, 38, ([System.Drawing.FontStyle]::Italic), ([System.Drawing.GraphicsUnit]::Pixel)
  $g.DrawString($tipo, $fTipo, $bMarfil, [single]($x - 2), [single](186 - $sube))

  $yNombre = 232 - $sube
  $g.DrawString($nombre, $fNombre, $bOro, (New-Object System.Drawing.RectangleF ([single]($x - 4)), ([single]$yNombre), ([single]($maxW + 8)), ([single]($alto * $lineas + 10))))
  $y = $yNombre + $alto * $lineas + 22

  $g.FillRectangle($bOro, $x, [int]$y, 90, 2)
  $y += 26

  $fTag = New-Object System.Drawing.Font $fuente, 25, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
  $g.DrawString($(if ($agotado) { $tagSinStock } else { $tagline }), $fTag, $bMarfil, [single]$x, [single]$y)

  # sello AGOTADO sobre la foto, igual que el de la ficha
  if ($agotado) {
    $fSello = New-Object System.Drawing.Font $fuente, 22, ([System.Drawing.FontStyle]::Bold), ([System.Drawing.GraphicsUnit]::Pixel)
    $anchoSello = $g.MeasureString('AGOTADO', $fSello).Width + 34
    $g.FillRectangle($bGris, ($tw + 26), 26, [single]$anchoSello, 46)
    $g.DrawString('AGOTADO', $fSello, $bMarfil, [single]($tw + 42), [single]37)
    $fSello.Dispose()
  }

  $fWeb = New-Object System.Drawing.Font $fuente, 19, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
  Espaciado $g 'reinascarlata.com' $fWeb $bMarfil $x ($H - 70) 3

  $destino = Join-Path $dirOg "$slug.jpg"
  $bmp.Save($destino, $codec, $ep)

  foreach ($o in @($fTipo, $fNombre, $fTag, $fWeb, $bOro, $bMarfil, $bGris, $grad, $g, $bmp)) { $o.Dispose() }
  Write-Output ("vista previa: assets/og/{0}.jpg  {1} KB" -f $slug, [Math]::Round((Get-Item $destino).Length / 1KB))
}

$logo.Dispose()
