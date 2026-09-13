Add-Type -AssemblyName System.Drawing
$src = "C:\Users\Elizabeth\Desktop\WhatsApp Image 2026-09-12 at 2.38.34 PM.jpeg"
$dst = "C:\Users\Elizabeth\rcseo\assets\logo-reina-scarlata.png"

$orig = [System.Drawing.Image]::FromFile($src)
$bmp  = New-Object System.Drawing.Bitmap($orig)
$orig.Dispose()

$minX = $bmp.Width; $minY = $bmp.Height; $maxX = 0; $maxY = 0
for ($y = 0; $y -lt $bmp.Height; $y += 2) {
  for ($x = 0; $x -lt $bmp.Width; $x += 2) {
    $p = $bmp.GetPixel($x, $y)
    $lum = 0.299 * $p.R + 0.587 * $p.G + 0.114 * $p.B
    if ($lum -gt 30) {
      if ($x -lt $minX) { $minX = $x }
      if ($x -gt $maxX) { $maxX = $x }
      if ($y -lt $minY) { $minY = $y }
      if ($y -gt $maxY) { $maxY = $y }
    }
  }
}
$pad = 8
$minX = [Math]::Max(0, $minX - $pad)
$minY = [Math]::Max(0, $minY - $pad)
$maxX = [Math]::Min($bmp.Width - 1, $maxX + $pad)
$maxY = [Math]::Min($bmp.Height - 1, $maxY + $pad)
$cw = $maxX - $minX + 1
$ch = $maxY - $minY + 1
Write-Output ("origen {0}x{1}  caja {2},{3} {4}x{5}" -f $bmp.Width, $bmp.Height, $minX, $minY, $cw, $ch)

$targetW = 520
$targetH = [int][Math]::Round($ch * $targetW / $cw)
$small = New-Object System.Drawing.Bitmap($targetW, $targetH)
$g = [System.Drawing.Graphics]::FromImage($small)
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$g.DrawImage($bmp, (New-Object System.Drawing.Rectangle(0,0,$targetW,$targetH)), (New-Object System.Drawing.Rectangle($minX,$minY,$cw,$ch)), [System.Drawing.GraphicsUnit]::Pixel)
$g.Dispose()
$bmp.Dispose()

$out = New-Object System.Drawing.Bitmap($targetW, $targetH, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
for ($y = 0; $y -lt $targetH; $y++) {
  for ($x = 0; $x -lt $targetW; $x++) {
    $p = $small.GetPixel($x, $y)
    $lum = 0.299 * $p.R + 0.587 * $p.G + 0.114 * $p.B
    if ($lum -lt 8) {
      $out.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0,0,0,0))
    } else {
      $a = [int][Math]::Min(255, [Math]::Round($lum * 255 / 170))
      $k = 1
      $r = [int][Math]::Min(255, [Math]::Round($p.R * $k))
      $gg = [int][Math]::Min(255, [Math]::Round($p.G * $k))
      $b = [int][Math]::Min(255, [Math]::Round($p.B * $k))
      $out.SetPixel($x, $y, [System.Drawing.Color]::FromArgb($a, $r, $gg, $b))
    }
  }
}
$small.Dispose()
$out.Save($dst, [System.Drawing.Imaging.ImageFormat]::Png)
$out.Dispose()
Write-Output ("guardado {0}  {1}x{2}  {3} KB" -f (Split-Path $dst -Leaf), $targetW, $targetH, [Math]::Round((Get-Item $dst).Length/1KB))
