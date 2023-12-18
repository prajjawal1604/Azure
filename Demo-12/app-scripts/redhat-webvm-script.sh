#!/bin/sh
#sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo chmod -R 777 /var/www/html
sudo echo "Hello World, Prajjawal This Side" > /var/www/html/index.html
sudo mkdir /var/www/html/app1
sudo echo "Hello World from $(hostname -f)" > /var/www/html/app1/index.html
sudo echo "App1" > /var/www/html/app1/status.html
sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(255, 255, 0);"> <h1>WebVM App1 - AppStatus Page</h1> <p>App1 is running on WebVM App1</p> </body> </html>' > /var/www/html/app1/AppStatus.html