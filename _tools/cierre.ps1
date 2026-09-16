# Genera el cierre de marca para los videos de redes: _redes/cierre-<formato>.jpg
# Fondo vino con el logo dorado centrado y la web debajo, para pegar al final
# del video en CapCut. Se corre solo cuando haga falta: powershell _tools/cierre.ps1
param([string]$Raiz = (Split-Path -Parent $PSScriptRoot))
Add-Type -AssemblyName System.Drawing

$oro    = [System.Drawing.Color]::FromArgb(214, 178, 110)
$marfil = [System.Drawing.Color]::FromArgb(240, 228, 212)
$vino1  = [System.Drawing.Color]::FromArgb(78, 17, 26)
$vino2  = [System.Drawing.Color]::FromArgb(26, 8, 11)
$fuente = 'Garamond'
$tagline = "Env$([char]0xED)os a todo el Per$([char]0xFA)  $([char]0x00B7)  Yape"

$dir = Join-Path $Raiz '_redes'
New-Item -ItemType Directory -Force $dir | Out-Null

$logo = [System.Drawing.Image]::FromFile((Join-Path $Raiz 'assets\logo-reina-scarlata.png'))

$codec = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object { $_.MimeType -eq 'image/jpeg' }
$ep = New-Object System.Drawing.Imaging.EncoderParameters 1
$ep.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter ([System.Drawing.Imaging.Encoder]::Quality), ([long]92)

$tipografico = [System.Drawing.StringFormat]::GenericTypographic

function Espaciado($g, $texto, $font, $brush, $cx, $y, $extra) {
  # dibuja el texto centrado en $cx con espaciado extra entre letras
  $ancho = 0
  foreach ($ch in $texto.ToCharArray()) { $ancho += $g.MeasureString([string]$ch, $font, 1000, $tipografico).Width + $extra }
  $x = $cx - ($ancho - $extra) / 2
  foreach ($ch in $texto.ToCharArray()) {
    $g.DrawString([string]$ch, $font, $brush, [single]$x, [single]$y, $tipografico)
    $x += $g.MeasureString([string]$ch, $font, 1000, $tipografico).Width + $extra
  }
}

# formato => ancho, alto, ancho del logo
$formatos = @(
  @{ nombre = '9x16'; w = 1080; h = 1920; logoW = 720 },
  @{ nombre = '16x9'; w = 1920; h = 1080; logoW = 760 },
  @{ nombre = '1x1';  w = 1080; h = 1080; logoW = 700 }
)

foreach ($f in $formatos) {
  $W = $f.w; $H = $f.h
  $bmp = New-Object System.Drawing.Bitmap $W, $H
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.SmoothingMode     = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
  $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
  $g.PixelOffsetMode   = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
  $g.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::AntiAliasGridFit

  # fondo vino en degradado diagonal, igual que las vistas previas
  $rect = New-Object System.Drawing.Rectangle 0, 0, $W, $H
  $grad = New-Object System.Drawing.Drawing2D.LinearGradientBrush -ArgumentList $rect, $vino1, $vino2, ([single]55)
  $g.FillRectangle($grad, $rect)

  $bOro = New-Object System.Drawing.SolidBrush $oro
  $bMarfil = New-Object System.Drawing.SolidBrush $marfil
  $cx = $W / 2

  # el logo, centrado y un poco por encima de la mitad
  $logoW = $f.logoW
  $logoH = [int][Math]::Round($logo.Height * $logoW / $logo.Width)
  $logoY = [int]($H / 2 - $logoH / 2 - $H * 0.05)
  $g.DrawImage($logo, (New-Object System.Drawing.Rectangle ([int]($cx - $logoW / 2)), $logoY, $logoW, $logoH))

  $y = $logoY + $logoH + [int]($H * 0.05)

  # filete dorado
  $anchoFilete = [int]($W * 0.10)
  $g.FillRectangle($bOro, [int]($cx - $anchoFilete / 2), $y, $anchoFilete, 2)
  $y += [int]($H * 0.035)

  $tamTag = [int]($W * 0.028)
  $fTag = New-Object System.Drawing.Font $fuente, $tamTag, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
  $medTag = $g.MeasureString($tagline, $fTag)
  $g.DrawString($tagline, $fTag, $bMarfil, [single]($cx - $medTag.Width / 2), [single]$y)
  $y += [int]($H * 0.05)

  $fWeb = New-Object System.Drawing.Font $fuente, ([int]($W * 0.026)), ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
  Espaciado $g 'reinascarlata.com' $fWeb $bOro $cx $y ($W * 0.004)

  $destino = Join-Path $dir ("cierre-{0}.jpg" -f $f.nombre)
  $bmp.Save($destino, $codec, $ep)

  foreach ($o in @($fTag, $fWeb, $bOro, $bMarfil, $grad, $g, $bmp)) { $o.Dispose() }
  Write-Output ("cierre: _redes/cierre-{0}.jpg  {1}x{2}  {3} KB" -f $f.nombre, $W, $H, [Math]::Round((Get-Item $destino).Length / 1KB))
}

$logo.Dispose()
