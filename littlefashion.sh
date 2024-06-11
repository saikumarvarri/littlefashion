URL=help
     FILE=2127_little_fashion
     sudo yum install httpd unzip wget -y
     sudo systemctl start httpd
      mkdir -p /home/centos/webfiles
      cd /home/centos/webfiles
      wget $URL
      sudo unzip $FILE.zip
      sudo rm -rf /var/www/html/*
      sudo cp -r $FILE/* /var/www/html/
      sudo rm -rf /home/centos/webfiles
      sudo systemctl restart httpd
