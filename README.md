# nsd

Lab1.1 Intro
{
  "CMDLIST": [
    "wget -P /tmp https://raw.githubusercontent.com/learnf5/nsd/main/nsd_labs_only_09aug23.tar",
    "scp /tmp/nsd_labs_only_09aug23.tar 10.0.0.11:/tmp/nsd_labs_only_09aug23.tar",
    "ssh 10.0.0.11 tar xvzf /tmp/nsd_labs_only_09aug23.tar -C /home/student/Downloads",
    "ssh 10.0.0.11 chown --recursive student:student /home/student/Downloads/nsd_labs_only_09aug23",
    "ssh 10.0.0.11 ln -s /home/student/Downloads/nsd_labs_only_09aug23/index.html /home/student/Desktop/Lab_Guide",
    "tar xvzf /tmp/nsd_labs_only_09aug23.tar -C /home/student/Downloads",
    "chown --recursive student:student /home/student/Downloads/nsd_labs_only_09aug23",
    "ln -s /home/student/Downloads/nsd_labs_only_09aug23/index.html /home/student/Desktop/Lab_Guide"
  ]
}

Lab2.1 HTTPS
{
  "CMDLIST": [
    "wget -P /tmp https://raw.githubusercontent.com/learnf5/nsd/main/nsd_labs_only_09aug23.tar",
    "scp /tmp/nsd_labs_only_09aug23.tar 10.0.0.11:/tmp/nsd_labs_only_09aug23.tar",
    "ssh 10.0.0.11 tar xvzf /tmp/nsd_labs_only_09aug23.tar -C /home/student/Downloads",
    "ssh 10.0.0.11 chown --recursive student:student /home/student/Downloads/nsd_labs_only_09aug23",
    "ssh 10.0.0.11 ln -s /home/student/Downloads/nsd_labs_only_09aug23/index.html /home/student/Desktop/Lab_Guide",
    "tar xvzf /tmp/nsd_labs_only_09aug23.tar -C /home/student/Downloads",
    "chown --recursive student:student /home/student/Downloads/nsd_labs_only_09aug23",
    "ln -s /home/student/Downloads/nsd_labs_only_09aug23/index.html /home/student/Desktop/Lab_Guide"
  ]
}

Lab2.2 SecUp
{
  "CMDLIST": [
    "apt install git --yes",
    "cd /tmp",
    "git clone https://github.com/learnf5/nsd.git nsd_files",
    "scp /tmp/nsd_files/nsd_labs_only_09aug23.tar 10.0.0.11:/tmp/nsd_labs_only_09aug23.tar",
    "ssh 10.0.0.11 tar xvzf /tmp/nsd_labs_only_09aug23.tar -C /home/student/Downloads",
    "ssh 10.0.0.11 chown --recursive student:student /home/student/Downloads/nsd_labs_only_09aug23",
    "ssh 10.0.0.11 ln -s /home/student/Downloads/nsd_labs_only_09aug23/index.html /home/student/Desktop/Lab_Guide",
    "tar xvzf /tmp/nsd_files/nsd_labs_only_09aug23.tar -C /home/student/Downloads",
    "chown --recursive student:student /home/student/Downloads/nsd_labs_only_09aug23",
    "ln -s /home/student/Downloads/nsd_labs_only_09aug23/index.html /home/student/Desktop/Lab_Guide",
    "scp /tmp/nsd_files/L2-L2-SecUp/juice.conf 10.0.0.11:/etc/nginx/conf.d/juice.conf",
    "scp /tmp/nsd_files/L2-L2-SecUp/ca-cert.crt 10.0.0.11:/etc/nginx/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L2-L2-SecUp/ca-cert.crt 10.0.0.11:/home/student/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L2-L2-SecUp/ca-cert.key 10.0.0.11:/home/student/ssl/ca-cert.key",
    "scp /tmp/nsd_files/L2-L2-SecUp/ca-cert.srl 10.0.0.11:/home/student/ssl/ca-cert.srl",
    "scp /tmp/nsd_files/L2-L2-SecUp/www.nginxtraining.com.crt 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L2-L2-SecUp/www.nginxtraining.com.crt 10.0.0.11:/home/student/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L2-L2-SecUp/www.nginxtraining.com.key 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L2-L2-SecUp/www.nginxtraining.com.key 10.0.0.11:/home/student/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L2-L2-SecUp/www.nginxtraining.com.csr 10.0.0.11:/home/student/ssl/www.nginxtraining.com.csr",
    "scp /tmp/nsd_files/L2-L2-SecUp/ssl-params.conf 10.0.0.11:/etc/nginx/ssl-configs/ssl-params.conf",
    "scp /tmp/nsd_files/L2-L2-SecUp/dhparam.pem 10.0.0.11:/etc/nginx/dhparam.pem",
    "scp /tmp/nsd_files/L2-L2-SecUp/hosts 10.0.0.11:/etc/hosts"
  ]
}

Lab3.1 RateLimit
{
  "CMDLIST": [
    "apt install git --yes",
    "cd /tmp",
    "git clone https://github.com/learnf5/nsd.git nsd_files",
    "scp /tmp/nsd_files/nsd_labs_only_09aug23.tar 10.0.0.11:/tmp/nsd_labs_only_09aug23.tar",
    "ssh 10.0.0.11 tar xvzf /tmp/nsd_labs_only_09aug23.tar -C /home/student/Downloads",
    "ssh 10.0.0.11 chown --recursive student:student /home/student/Downloads/nsd_labs_only_09aug23",
    "ssh 10.0.0.11 ln -s /home/student/Downloads/nsd_labs_only_09aug23/index.html /home/student/Desktop/Lab_Guide",
    "tar xvzf /tmp/nsd_files/nsd_labs_only_09aug23.tar -C /home/student/Downloads",
    "chown --recursive student:student /home/student/Downloads/nsd_labs_only_09aug23",
    "ln -s /home/student/Downloads/nsd_labs_only_09aug23/index.html /home/student/Desktop/Lab_Guide",
    "scp /tmp/nsd_files/L3-L1-RateLimit/juice.conf 10.0.0.11:/etc/nginx/conf.d/juice.conf",
    "scp /tmp/nsd_files/L3-L1-RateLimit/ca-cert.crt 10.0.0.11:/etc/nginx/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L1-RateLimit/ca-cert.crt 10.0.0.11:/home/student/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L1-RateLimit/ca-cert.key 10.0.0.11:/home/student/ssl/ca-cert.key",
    "scp /tmp/nsd_files/L3-L1-RateLimit/ca-cert.srl 10.0.0.11:/home/student/ssl/ca-cert.srl",
    "scp /tmp/nsd_files/L3-L1-RateLimit/www.nginxtraining.com.crt 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L1-RateLimit/www.nginxtraining.com.crt 10.0.0.11:/home/student/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L1-RateLimit/www.nginxtraining.com.key 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L1-RateLimit/www.nginxtraining.com.key 10.0.0.11:/home/student/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L1-RateLimit/www.nginxtraining.com.csr 10.0.0.11:/home/student/ssl/www.nginxtraining.com.csr",
    "scp /tmp/nsd_files/L3-L1-RateLimit/ssl-params.conf 10.0.0.11:/etc/nginx/ssl-configs/ssl-params.conf",
    "scp /tmp/nsd_files/L3-L1-RateLimit/dhparam.pem 10.0.0.11:/etc/nginx/dhparam.pem",
    "scp /tmp/nsd_files/L3-L1-RateLimit/hosts 10.0.0.11:/etc/hosts",
    "ssh 10.0.0.11 cp /etc/nginx/conf.d/api_server.{conf,orig}",
    "scp /tmp/nsd_files/L3-L1-RateLimit/api_server.conf 10.0.0.11:/etc/nginx/conf.d/api_server.conf"
  ]
}

Lab3.2 Logs
