# nsd

Skytap template# 2289347
https://cloud.skytap.com/templates/2289347

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
    "scp /tmp/nsd_files/L3-L2-Logs/juice.conf 10.0.0.11:/etc/nginx/conf.d/juice.conf",
    "scp /tmp/nsd_files/L3-L2-Logs/juice.PRElimits 10.0.0.11:/etc/nginx/conf.d/juice.PRElimits",
    "scp /tmp/nsd_files/L3-L2-Logs/ca-cert.crt 10.0.0.11:/etc/nginx/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L2-Logs/ca-cert.crt 10.0.0.11:/home/student/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L2-Logs/ca-cert.key 10.0.0.11:/home/student/ssl/ca-cert.key",
    "scp /tmp/nsd_files/L3-L2-Logs/ca-cert.srl 10.0.0.11:/home/student/ssl/ca-cert.srl",
    "scp /tmp/nsd_files/L3-L2-Logs/www.nginxtraining.com.crt 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L2-Logs/www.nginxtraining.com.crt 10.0.0.11:/home/student/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L2-Logs/www.nginxtraining.com.key 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L2-Logs/www.nginxtraining.com.key 10.0.0.11:/home/student/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L2-Logs/www.nginxtraining.com.csr 10.0.0.11:/home/student/ssl/www.nginxtraining.com.csr",
    "scp /tmp/nsd_files/L3-L2-Logs/dhparam.pem 10.0.0.11:/etc/nginx/dhparam.pem",
    "scp /tmp/nsd_files/L3-L2-Logs/hosts 10.0.0.11:/etc/hosts"
  ]
}

Lab3.3 IpDeny
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
    "scp /tmp/nsd_files/L3-L3-IpDeny/juice.conf 10.0.0.11:/etc/nginx/conf.d/juice.conf",
    "scp /tmp/nsd_files/L3-L3-IpDeny/juice.LIMITS 10.0.0.11:/etc/nginx/conf.d/juice.LIMITS",
    "scp /tmp/nsd_files/L3-L3-IpDeny/ca-cert.crt 10.0.0.11:/etc/nginx/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L3-IpDeny/ca-cert.crt 10.0.0.11:/home/student/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L3-IpDeny/ca-cert.key 10.0.0.11:/home/student/ssl/ca-cert.key",
    "scp /tmp/nsd_files/L3-L3-IpDeny/ca-cert.srl 10.0.0.11:/home/student/ssl/ca-cert.srl",
    "scp /tmp/nsd_files/L3-L3-IpDeny/www.nginxtraining.com.crt 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L3-IpDeny/www.nginxtraining.com.crt 10.0.0.11:/home/student/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L3-IpDeny/www.nginxtraining.com.key 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L3-IpDeny/www.nginxtraining.com.key 10.0.0.11:/home/student/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L3-IpDeny/www.nginxtraining.com.csr 10.0.0.11:/home/student/ssl/www.nginxtraining.com.csr",
    "scp /tmp/nsd_files/L3-L3-IpDeny/dhparam.pem 10.0.0.11:/etc/nginx/dhparam.pem",
    "scp /tmp/nsd_files/L3-L3-IpDeny/hosts 10.0.0.11:/etc/hosts"
  ]
}

Lab3.4 LazyCert
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
    "scp /tmp/nsd_files/L3-L4-LazyCert/juice.conf 10.0.0.11:/etc/nginx/conf.d/juice.conf",
    "scp /tmp/nsd_files/L3-L4-LazyCert/ca-cert.crt 10.0.0.11:/etc/nginx/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L4-LazyCert/ca-cert.crt 10.0.0.11:/home/student/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L4-LazyCert/ca-cert.key 10.0.0.11:/home/student/ssl/ca-cert.key",
    "scp /tmp/nsd_files/L3-L4-LazyCert/ca-cert.srl 10.0.0.11:/home/student/ssl/ca-cert.srl",
    "scp /tmp/nsd_files/L3-L4-LazyCert/www.nginxtraining.com.crt 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L4-LazyCert/www.nginxtraining.com.crt 10.0.0.11:/home/student/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L4-LazyCert/www.nginxtraining.com.key 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L4-LazyCert/www.nginxtraining.com.key 10.0.0.11:/home/student/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L4-LazyCert/www.nginxtraining.com.csr 10.0.0.11:/home/student/ssl/www.nginxtraining.com.csr",
    "scp /tmp/nsd_files/L3-L4-LazyCert/dhparam.pem 10.0.0.11:/etc/nginx/dhparam.pem",
    "scp /tmp/nsd_files/L3-L4-LazyCert/hosts 10.0.0.11:/etc/hosts",
    "ssh 10.0.0.11 mkdir /tmp/nginx",
    "ssh 10.0.0.11 chonw nginx:nginx /tmp/nginx"
  ]
}

Lab3.5 InMen (In Development)
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
    "scp /tmp/nsd_files/L3-L5-InMem/juice.conf 10.0.0.11:/etc/nginx/conf.d/juice.conf",
    "scp /tmp/nsd_files/L3-L5-InMem/ca-cert.crt 10.0.0.11:/etc/nginx/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L5-InMem/ca-cert.crt 10.0.0.11:/home/student/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L3-L5-InMem/ca-cert.key 10.0.0.11:/home/student/ssl/ca-cert.key",
    "scp /tmp/nsd_files/L3-L5-InMem/ca-cert.srl 10.0.0.11:/home/student/ssl/ca-cert.srl",
    "scp /tmp/nsd_files/L3-L5-InMem/www.nginxtraining.com.crt 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L5-InMem/www.nginxtraining.com.crt 10.0.0.11:/home/student/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L3-L5-InMem/www.nginxtraining.com.key 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L5-InMem/www.nginxtraining.com.key 10.0.0.11:/home/student/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L3-L5-InMem/www.nginxtraining.com.csr 10.0.0.11:/home/student/ssl/www.nginxtraining.com.csr",
    "scp /tmp/nsd_files/L3-L5-InMem/dhparam.pem 10.0.0.11:/etc/nginx/dhparam.pem",
    "scp /tmp/nsd_files/L3-L5-InMem/hosts 10.0.0.11:/etc/hosts",
    "ssh 10.0.0.11 mkdir /tmp/nginx",
    "ssh 10.0.0.11 chonw nginx:nginx /tmp/nginx",
    "ssh 10.0.0.11 cp /etc/nginx/conf.d/api_server.{conf,orig}",
    "scp /tmp/nsd_files/L3-L5-InMem/api_server.conf 10.0.0.11:/etc/nginx/conf.d/api_server.conf",
    "scp /tmp/nsd_files/L3-L5-InMem/api_server.traditional 10.0.0.11:/etc/nginx/conf.d/api_server.traditional",
    "scp /tmp/nsd_files/L3-L5-InMem/juice.traditional 10.0.0.11:/etc/nginx/conf.d/juice.traditional",
    "scp /tmp/nsd_files/L3-L5-InMem/ssl-params.conf 10.0.0.11:/etc/nginx/ssl-configs/ssl-params.conf",
    "scp /tmp/nsd_files/L3-L5-InMem/ssl-params.traditional 10.0.0.11:/etc/nginx/ssl-configs/ssl-params.traditional"
  ]
}

Lab5.1 HTTP2
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
    "scp /tmp/nsd_files/L5-L1-HTTP2/juice.conf 10.0.0.11:/etc/nginx/conf.d/juice.conf",
    "scp /tmp/nsd_files/L5-L1-HTTP2/ca-cert.crt 10.0.0.11:/etc/nginx/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L5-L1-HTTP2/ca-cert.crt 10.0.0.11:/home/student/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L5-L1-HTTP2/ca-cert.key 10.0.0.11:/home/student/ssl/ca-cert.key",
    "scp /tmp/nsd_files/L5-L1-HTTP2/ca-cert.srl 10.0.0.11:/home/student/ssl/ca-cert.srl",
    "scp /tmp/nsd_files/L5-L1-HTTP2/www.nginxtraining.com.crt 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L5-L1-HTTP2/www.nginxtraining.com.crt 10.0.0.11:/home/student/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L5-L1-HTTP2/www.nginxtraining.com.key 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L5-L1-HTTP2/www.nginxtraining.com.key 10.0.0.11:/home/student/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L5-L1-HTTP2/www.nginxtraining.com.csr 10.0.0.11:/home/student/ssl/www.nginxtraining.com.csr",
    "scp /tmp/nsd_files/L5-L1-HTTP2/dhparam.pem 10.0.0.11:/etc/nginx/dhparam.pem",
    "scp /tmp/nsd_files/L5-L1-HTTP2/hosts 10.0.0.11:/etc/hosts",
    "ssh 10.0.0.11 mkdir /tmp/nginx",
    "ssh 10.0.0.11 chonw nginx:nginx /tmp/nginx",
    "ssh 10.0.0.11 cp /etc/nginx/conf.d/api_server.{conf,orig}",
    "scp /tmp/nsd_files/L5-L1-HTTP2/api_server.conf 10.0.0.11:/etc/nginx/conf.d/api_server.conf",
    "scp /tmp/nsd_files/L5-L1-HTTP2/ssl-params.conf 10.0.0.11:/etc/nginx/ssl-configs/ssl-params.conf"
  ]
}

Lab6.1 SecAPI
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
    "scp /tmp/nsd_files/L6-L1-SecAPI/juice.conf 10.0.0.11:/etc/nginx/conf.d/juice.conf",
    "scp /tmp/nsd_files/L6-L1-SecAPI/ca-cert.crt 10.0.0.11:/etc/nginx/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L6-L1-SecAPI/ca-cert.crt 10.0.0.11:/home/student/ssl/ca-cert.crt",
    "scp /tmp/nsd_files/L6-L1-SecAPI/ca-cert.key 10.0.0.11:/home/student/ssl/ca-cert.key",
    "scp /tmp/nsd_files/L6-L1-SecAPI/ca-cert.srl 10.0.0.11:/home/student/ssl/ca-cert.srl",
    "scp /tmp/nsd_files/L6-L1-SecAPI/www.nginxtraining.com.crt 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L6-L1-SecAPI/www.nginxtraining.com.crt 10.0.0.11:/home/student/ssl/www.nginxtraining.com.crt",
    "scp /tmp/nsd_files/L6-L1-SecAPI/www.nginxtraining.com.key 10.0.0.11:/etc/nginx/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L6-L1-SecAPI/www.nginxtraining.com.key 10.0.0.11:/home/student/ssl/www.nginxtraining.com.key",
    "scp /tmp/nsd_files/L6-L1-SecAPI/www.nginxtraining.com.csr 10.0.0.11:/home/student/ssl/www.nginxtraining.com.csr",
    "scp /tmp/nsd_files/L6-L1-SecAPI/dhparam.pem 10.0.0.11:/etc/nginx/dhparam.pem",
    "scp /tmp/nsd_files/L6-L1-SecAPI/hosts 10.0.0.11:/etc/hosts",
    "ssh 10.0.0.11 mkdir /tmp/nginx",
    "ssh 10.0.0.11 chonw nginx:nginx /tmp/nginx",
    "ssh 10.0.0.11 cp /etc/nginx/conf.d/api_server.{conf,orig}",
    "scp /tmp/nsd_files/L6-L1-SecAPI/api_server.conf 10.0.0.11:/etc/nginx/conf.d/api_server.conf",
    "scp /tmp/nsd_files/L6-L1-SecAPI/ssl-params.conf 10.0.0.11:/etc/nginx/ssl-configs/ssl-params.conf",
    "scp /tmp/nsd_files/L6-L1-SecAPI/nginx.conf 10.0.0.11:/etc/nginx/nginx.conf"
  ]
}
