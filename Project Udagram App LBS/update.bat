 #!/bin/bash
                    apt-get update -y
                    apt-get install unzip awscli -y
                    apt-get install apache2 -y
                    systemctl start apache2.service
                    cd /var/www/html
                    rm -rf ./*
                    aws s3 cp s3://my-bucket864884415628/udagramproject.zip .
                    unzip udagramproject.zip
                    rm udagramproject.zip 
                    cp udagramproject/* .