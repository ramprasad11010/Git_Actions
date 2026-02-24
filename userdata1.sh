#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Migration Test Page - HTTPD</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-align: center; margin-top: 100px; background-color: #f4f4f4; }
        .card { background: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); display: inline-block; }
        h1 { color: #d32f2f; }
        .status { color: #388e3c; font-weight: bold; }
    </style>
</head>
<body>
    <div class="card">
        <h1>HTTPD Server Online</h1>
        <p>The <span class="status">Apache HTTP Server</span> is successfully running on this node.</p>
        <p>Deployment Timestamp: $(date)</p>
        <p>HOSTNAME=$(hostname)</p>
        <p>IP=$(local-ipv4)</p>
    </div>
</body>
</html>
EOF
systemctl start httpd
systemctl enable httpd
sudo useradd ram
sudo usermod -aG wheel