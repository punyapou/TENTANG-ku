Add-Type -AssemblyName System.Drawing

if (-not (Test-Path "image")) {
    New-Item -ItemType Directory -Path "image" | Out-Null
}

function Create-GradientBrush($rect, $c1, $c2) {
    return [System.Drawing.Drawing2D.LinearGradientBrush]::new($rect, $c1, $c2, [System.Drawing.Drawing2D.LinearGradientMode]::Vertical)
}

# -------------------------------------------------------------
# 1. Profile Picture: profile.jpg (600x600)
# -------------------------------------------------------------
$bmp1 = [System.Drawing.Bitmap]::new(600, 600)
$g1 = [System.Drawing.Graphics]::FromImage($bmp1)
$g1.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias

$rect1 = [System.Drawing.Rectangle]::new(0, 0, 600, 600)
$brushBg1 = Create-GradientBrush $rect1 ([System.Drawing.Color]::FromArgb(255, 7, 27, 74)) ([System.Drawing.Color]::FromArgb(255, 6, 18, 37))
$g1.FillRectangle($brushBg1, $rect1)

# Tech Grid
$penGrid = [System.Drawing.Pen]::new([System.Drawing.Color]::FromArgb(100, 11, 35, 69), 1)
for ($x = 0; $x -le 600; $x += 30) { $g1.DrawLine($penGrid, $x, 0, $x, 600) }
for ($y = 0; $y -le 600; $y += 30) { $g1.DrawLine($penGrid, 0, $y, 600, $y) }

# Outer Glowing Ring
$penCyan = [System.Drawing.Pen]::new([System.Drawing.Color]::FromArgb(255, 0, 217, 255), 6)
$g1.DrawEllipse($penCyan, 170, 110, 260, 260)
$penNavy = [System.Drawing.Pen]::new([System.Drawing.Color]::FromArgb(255, 18, 61, 122), 3)
$g1.DrawEllipse($penNavy, 180, 120, 240, 240)

# Student Avatar Silhouette
$brushCyan = [System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(255, 0, 217, 255))
$g1.FillEllipse($brushCyan, 250, 170, 100, 100) # Head
$g1.FillPie($brushCyan, 190, 270, 220, 200, 180, 180) # Shoulders

# Overlay Badge
$brushCard = [System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(230, 11, 35, 69))
$g1.FillRectangle($brushCard, 80, 480, 440, 70)
$g1.DrawRectangle($penCyan, 80, 480, 440, 70)

$font = [System.Drawing.Font]::new("Segoe UI", 16, [System.Drawing.FontStyle]::Bold)
$brushText = [System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(255, 0, 217, 255))
$sf = [System.Drawing.StringFormat]::new()
$sf.Alignment = [System.Drawing.StringAlignment]::Center
$sf.LineAlignment = [System.Drawing.StringAlignment]::Center
$g1.DrawString("PROFIL PELAJAR TEKNOLOGI", $font, $brushText, [System.Drawing.RectangleF]::new(80, 480, 440, 70), $sf)

$bmp1.Save("image/profile.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
$g1.Dispose()
$bmp1.Dispose()
Write-Output "Saved image/profile.jpg"

# -------------------------------------------------------------
# 2. Networking: jaringan.jpg (800x600)
# -------------------------------------------------------------
$bmp2 = [System.Drawing.Bitmap]::new(800, 600)
$g2 = [System.Drawing.Graphics]::FromImage($bmp2)
$g2.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias

$rect2 = [System.Drawing.Rectangle]::new(0, 0, 800, 600)
$brushBg2 = Create-GradientBrush $rect2 ([System.Drawing.Color]::FromArgb(255, 6, 18, 37)) ([System.Drawing.Color]::FromArgb(255, 18, 61, 122))
$g2.FillRectangle($brushBg2, $rect2)

# Nodes & Links
$nodes = @(
    [System.Drawing.Point]::new(150, 150),
    [System.Drawing.Point]::new(400, 100),
    [System.Drawing.Point]::new(650, 150),
    [System.Drawing.Point]::new(250, 300),
    [System.Drawing.Point]::new(550, 300),
    [System.Drawing.Point]::new(400, 450),
    [System.Drawing.Point]::new(150, 480),
    [System.Drawing.Point]::new(650, 480)
)

$penLink = [System.Drawing.Pen]::new([System.Drawing.Color]::FromArgb(200, 0, 217, 255), 3)
for ($i=0; $i -lt $nodes.Count; $i++) {
    for ($j=$i+1; $j -lt $nodes.Count; $j++) {
        $dx = $nodes[$i].X - $nodes[$j].X
        $dy = $nodes[$i].Y - $nodes[$j].Y
        $dist = [Math]::Sqrt($dx*$dx + $dy*$dy)
        if ($dist -lt 320) {
            $g2.DrawLine($penLink, $nodes[$i], $nodes[$j])
        }
    }
}

$brushNodeBg = [System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(255, 7, 27, 74))
foreach ($n in $nodes) {
    $g2.FillEllipse($brushNodeBg, $n.X - 25, $n.Y - 25, 50, 50)
    $g2.DrawEllipse($penCyan, $n.X - 25, $n.Y - 25, 50, 50)
    $g2.FillEllipse($brushCyan, $n.X - 10, $n.Y - 10, 20, 20)
}

# Label
$g2.FillRectangle($brushCard, 150, 520, 500, 50)
$g2.DrawRectangle($penCyan, 150, 520, 500, 50)
$fontSub = [System.Drawing.Font]::new("Segoe UI", 14, [System.Drawing.FontStyle]::Bold)
$g2.DrawString("JARINGAN KOMPUTER & TOPOLOGI", $fontSub, $brushText, [System.Drawing.RectangleF]::new(150, 520, 500, 50), $sf)

$bmp2.Save("image/jaringan.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
$g2.Dispose()
$bmp2.Dispose()
Write-Output "Saved image/jaringan.jpg"

# -------------------------------------------------------------
# 3. Monitoring: monitoring.jpg (800x600)
# -------------------------------------------------------------
$bmp3 = [System.Drawing.Bitmap]::new(800, 600)
$g3 = [System.Drawing.Graphics]::FromImage($bmp3)
$g3.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias

$rect3 = [System.Drawing.Rectangle]::new(0, 0, 800, 600)
$brushBg3 = Create-GradientBrush $rect3 ([System.Drawing.Color]::FromArgb(255, 7, 27, 74)) ([System.Drawing.Color]::FromArgb(255, 6, 18, 37))
$g3.FillRectangle($brushBg3, $rect3)

# Dashboard Box 1
$g3.FillRectangle($brushCard, 50, 50, 330, 210)
$g3.DrawRectangle($penCyan, 50, 50, 330, 210)
$fontBox = [System.Drawing.Font]::new("Segoe UI", 12, [System.Drawing.FontStyle]::Bold)
$g3.DrawString("METRIK PERFORMA", $fontBox, $brushText, 70, 70)
$pts = @(
    [System.Drawing.Point]::new(80, 210),
    [System.Drawing.Point]::new(130, 150),
    [System.Drawing.Point]::new(180, 180),
    [System.Drawing.Point]::new(230, 120),
    [System.Drawing.Point]::new(280, 160),
    [System.Drawing.Point]::new(340, 110)
)
$g3.DrawLines($penCyan, $pts)

# Dashboard Box 2
$g3.FillRectangle($brushCard, 420, 50, 330, 210)
$g3.DrawRectangle($penCyan, 420, 50, 330, 210)
$g3.DrawString("TRAFIK DATA SERVER", $fontBox, $brushText, 440, 70)
$bars = @(90, 130, 70, 150, 110, 140)
$bx = 450
foreach ($b in $bars) {
    $g3.FillRectangle($brushCyan, $bx, (230 - $b), 30, $b)
    $bx += 45
}

# Logs Console Box
$g3.FillRectangle($brushCard, 50, 290, 700, 260)
$g3.DrawRectangle($penCyan, 50, 290, 700, 260)
$g3.DrawString("SISTEM MONITORING REALTIME", $fontBox, $brushText, 70, 310)

$fontConsole = [System.Drawing.Font]::new("Consolas", 11)
$brushSecText = [System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(255, 184, 199, 220))
$g3.DrawString("[INFO] Interface eth0 Online (1000 Mbps Full-Duplex)", $fontConsole, $brushSecText, 70, 360)
$g3.DrawString("[OK] Latency Ping Server: 1ms | Packet Loss: 0%", $fontConsole, $brushText, 70, 395)
$g3.DrawString("[STATUS] Firewall Active & Port 80/443 Listening", $fontConsole, $brushSecText, 70, 430)
$g3.DrawString("[CPU] Utilization: 12% | RAM: 3.4 GB / 16 GB", $fontConsole, $brushText, 70, 465)

$bmp3.Save("image/monitoring.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
$g3.Dispose()
$bmp3.Dispose()
Write-Output "Saved image/monitoring.jpg"

# -------------------------------------------------------------
# 4. Activity: activity.jpg (800x600)
# -------------------------------------------------------------
$bmp4 = [System.Drawing.Bitmap]::new(800, 600)
$g4 = [System.Drawing.Graphics]::FromImage($bmp4)
$g4.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias

$rect4 = [System.Drawing.Rectangle]::new(0, 0, 800, 600)
$brushBg4 = Create-GradientBrush $rect4 ([System.Drawing.Color]::FromArgb(255, 6, 18, 37)) ([System.Drawing.Color]::FromArgb(255, 11, 35, 69))
$g4.FillRectangle($brushBg4, $rect4)

# IDE Window
$g4.FillRectangle($brushCard, 60, 60, 680, 480)
$g4.DrawRectangle($penCyan, 60, 60, 680, 480)

# Window Header
$brushSecHeader = [System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(255, 18, 61, 122))
$g4.FillRectangle($brushSecHeader, 60, 60, 680, 45)
$g4.FillEllipse([System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(255, 255, 95, 86)), 80, 75, 14, 14)
$g4.FillEllipse([System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(255, 255, 189, 46)), 102, 75, 14, 14)
$g4.FillEllipse([System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(255, 39, 201, 63)), 124, 75, 14, 14)

$g4.DrawString('index.html - Web Development Practical Lab', $fontBox, $brushText, [System.Drawing.RectangleF]::new(60, 60, 680, 45), $sf)

# Code snippet lines
$code = @(
    '<!DOCTYPE html>',
    '<html lang="id">',
    '  <head>',
    '    <title>Tentang Aku - Portofolio Personal</title>',
    '    <link rel="stylesheet" href="css/style.css">',
    '  </head>',
    '  <body>',
    '    <h1>Praktik Web Development & Linux</h1>',
    '    <script src="js/script.js"></script>',
    '  </body>',
    '</html>'
)

$yPos = 125
foreach ($line in $code) {
    $g4.DrawString($line, $fontConsole, $brushText, 90, $yPos)
    $yPos += 34
}

$bmp4.Save("image/activity.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
$g4.Dispose()
$bmp4.Dispose()
Write-Output "Saved image/activity.jpg"

if (Test-Path "test.jpg") { Remove-Item "test.jpg" }
if (Test-Path "create_images.py") { Remove-Item "create_images.py" }

