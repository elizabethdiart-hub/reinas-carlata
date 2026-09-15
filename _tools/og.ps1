# Genera las vistas previas para redes (1200x630) de cada ficha: assets/og/<slug>.jpg
# Lo llama gen.sh con un TSV: slug, nombre, precio, precio anterior, foto, recorte y0, recorte y1
param([string]$Datos, [string]$Raiz)
Add-Type -AssemblyName System.Drawing

$W = 1200; $H = 630
$oro     = [System.Drawing.Color]::FromArgb(214, 178, 110)
$marfil  = [System.Drawing.Color]::FromArgb(240, 228, 212)
$vino1   = [System.Drawing.Color]::FromArgb(78, 17, 26)
$vino2   = [System.Drawing.Color]::FromArgb(26, 8, 11)
$fuente  = 'Garamond'
$tagline = "Env$([char]0xED)os a todo el Per$([char]0xFA)  $([char]0x00B7)  Yape"

$dirOg = Join-Path $Raiz 'assets\og'
New-Item -ItemType Directory -Force $dirOg | Out-Null

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
  $slug = $c[0]; $nombreCompleto = $c[1]; $precio = $c[2]; $antes = $c[3]; $foto = $c[4]
  $y0 = [double]$c[5]; $y1 = [double]$c[6]

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
  $g.FillRectangle($bOro, $tw - 2, 0, 4, $H)

  $x = 64; $maxW = $tw - 2 * $x

  $fMarca = New-Object System.Drawing.Font $fuente, 21, ([System.Drawing.FontStyle]::Bold), ([System.Drawing.GraphicsUnit]::Pixel)
  Espaciado $g 'REINA SCARLATA' $fMarca $bOro $x 62 6

  $fTipo = New-Object System.Drawing.Font $fuente, 38, ([System.Drawing.FontStyle]::Italic), ([System.Drawing.GraphicsUnit]::Pixel)
  $g.DrawString($tipo, $fTipo, $bMarfil, [single]($x - 2), [single]150)

  # nombre: lo más grande posible, en una línea o en dos (hasta 68 px)
  for ($s = 88; $s -ge 40; $s -= 2) {
    $fNombre = New-Object System.Drawing.Font $fuente, $s, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
    $alto = $fNombre.GetHeight($g)
    $med = $g.MeasureString($nombre, $fNombre, [int]$maxW)
    $lineas = [Math]::Round($med.Height / $alto)
    if ($lineas -le 1 -or ($lineas -le 2 -and $s -le 68)) { break }
    $fNombre.Dispose()
  }
  $yNombre = 196
  $g.DrawString($nombre, $fNombre, $bOro, (New-Object System.Drawing.RectangleF ([single]($x - 4)), ([single]$yNombre), ([single]($maxW + 8)), ([single]($alto * $lineas + 10))))
  $y = $yNombre + $alto * $lineas + 22

  $g.FillRectangle($bOro, $x, [int]$y, 90, 2)
  $y += 26

  $fPrecio = New-Object System.Drawing.Font $fuente, 54, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
  $txtPrecio = "S/ $precio"
  $g.DrawString($txtPrecio, $fPrecio, $bOro, [single]($x - 4), [single]$y)
  if ($antes) {
    $anchoPrecio = $g.MeasureString($txtPrecio, $fPrecio).Width
    $fAntes = New-Object System.Drawing.Font $fuente, 30, ([System.Drawing.FontStyle]::Strikeout), ([System.Drawing.GraphicsUnit]::Pixel)
    $g.DrawString("S/ $antes", $fAntes, $bMarfil, [single]($x + $anchoPrecio + 6), [single]($y + 20))
    $fAntes.Dispose()
  }
  $y += 78

  $fTag = New-Object System.Drawing.Font $fuente, 25, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
  $g.DrawString($tagline, $fTag, $bMarfil, [single]$x, [single]$y)

  $fWeb = New-Object System.Drawing.Font $fuente, 19, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
  Espaciado $g 'reinascarlata.com' $fWeb $bMarfil $x ($H - 70) 3

  $destino = Join-Path $dirOg "$slug.jpg"
  $bmp.Save($destino, $codec, $ep)

  foreach ($o in @($fMarca, $fTipo, $fNombre, $fPrecio, $fTag, $fWeb, $bOro, $bMarfil, $grad, $g, $bmp)) { $o.Dispose() }
  Write-Output ("vista previa: assets/og/{0}.jpg  {1} KB" -f $slug, [Math]::Round((Get-Item $destino).Length / 1KB))
}
