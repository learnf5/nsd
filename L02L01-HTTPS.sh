# enable debugging
set -x
PS4='+$(date +"%T.%3N"): '

# update nginx host for the specific lab
# pull files from github, prep directories on nginx and copy files to nginx
    cd /tmp
    git clone https://github.com/learnf5/nsd.git nsd_files
    sudo ssh nginx rm /etc/nginx/conf.d/default.conf
    sudo ssh nginx mkdir /etc/nginx/ssl
    sudo ssh nginx chown --recursive nginx:nginx /etc/nginx/ssl
    sudo ssh nginx mkdir /etc/nginx/ssl-configs
    sudo ssh nginx mkdir /home/student/ssl
    sudo ssh nginx chown --recursive student:student /home/student/ssl
    sudo scp /tmp/nsd_files/L1-L1-Intro/hosts_nginx nginx:/etc/hosts
    sudo scp /tmp/nsd_files/scripts/create_certs.sh nginx:/home/student/ssl/create_certs.sh
    sudo ssh nginx chmod +x /home/student/ssl/create_certs.sh
    sudo ssh nginx chown student:student /home/student/ssl/create_certs.sh
    sudo scp /tmp/nsd_files/L2-L1-HTTPS/juice.conf nginx:/etc/nginx/conf.d/juice.conf
    sudo scp /tmp/nsd_files/L2-L1-HTTPS/ssl-params.conf nginx:/etc/nginx/ssl-configs/ssl-params.conf

 ####   FOR COMBINING L201-HTTPS & L02L02-SecUp - make sure whatever did in L2L01-HTTPS works for start up of SecUp
 ####   COULD create new directory /etc/nginx/SecUp and put the files that were used in Securing Upstream there 
 ####   which I'm calling SecUp_filename.bak...and then either copy the file need to /etc/nginx/conf.d/ or add in with include directive
 # pull files from github, prep directories on nginx and copy files to nginx
    sudo scp /tmp/nsd_files/scripts/curl_script.sh            nginx:/home/student/curl_script.sh
    sudo ssh nginx chmod +x /home/student/curl_script.sh
    sudo ssh nginx chown student:student /home/student/curl_script.sh
   #### NEED TO ADD STEP TO LAB to rename SecUp_juice.bak to juice.conf OR just the steps to add what we need to juice.conf
   # sudo scp /tmp/nsd_files/L2-L2-SecUp/juice.conf            nginx:/etc/nginx/conf.d/juice.conf
    sudo scp /tmp/nsd_files/L2-L2-SecUp/SecUp_juice.conf      nginx:/etc/nginx/conf.d/SecUp_juice.bak
   #### NEED TO ADD STEP TO LAB to rename SecUp_api_server.bak to api_server.conf.conf 
   # sudo scp /tmp/nsd_files/L2-L2-SecUp/api_server.conf       nginx:/etc/nginx/conf.d/api_server.conf
    sudo scp /tmp/nsd_files/L2-L2-SecUp/SecUp_api_server.bak       nginx:/etc/nginx/conf.d/SecUp_api_server.bak
  #### NEED TO ADD STEP TO LAB to rename proxy-ssl-params.bak to SecUp-proxy-ssl-params.conf.conf
   # sudo scp /tmp/nsd_files/L2-L2-SecUp/ssl-params.conf nginx:/etc/nginx/ssl-configs/ssl-params.conf
    sudo scp /tmp/nsd_files/L2-L2-SecUp/SecUp_ssl-params.bak       nginx:/etc/nginx/ssl-configs/SecUp_ssl-params.bak
  #### NEED TO ADD STEP TO LAB to rename SecUp_proxy-ssl-params.bak to SecUp_proxy-ssl-params.conf 
   # sudo scp /tmp/nsd_files/L2-L2-SecUp/proxy-ssl-params.conf nginx:/etc/nginx/ssl-configs/proxy-ssl-params.conf    
   sudo scp /tmp/nsd_files/L2-L2-SecUp/SecUp_proxy-ssl-params.bak nginx:/etc/nginx/ssl-configs/SecUp_proxy-ssl-params.bak    
  #### NEED TO ADD STEP TO LAB to rename SecUp_dhparam.pem to dhparam.pem 
   sudo scp /tmp/nsd_files/L2-L2-SecUp/SecUp_dhparam.pem           nginx:/etc/nginx/SecUp_dhparam.pem

    # copy cert files to nginx
    ##### PROBABLY DON'T NEED THESE FILES SINCE create in part 1 of Lab2 HTTPS
    #sudo scp /tmp/nsd_files/certs/ca-cert.crt                nginx:/etc/nginx/ssl/ca-cert.crt
    #sudo scp /tmp/nsd_files/certs/ca-cert.crt                nginx:/home/student/ssl/ca-cert.crt
    #sudo scp /tmp/nsd_files/certs/ca-cert.key                nginx:/home/student/ssl/ca-cert.key
    #sudo scp /tmp/nsd_files/certs/ca-cert.srl                nginx:/home/student/ssl/ca-cert.srl
    #sudo scp /tmp/nsd_files/certs/www.nginxtraining.com.crt  nginx:/etc/nginx/ssl/www.nginxtraining.com.crt
    #sudo scp /tmp/nsd_files/certs/www.nginxtraining.com.crt  nginx:/home/student/ssl/www.nginxtraining.com.crt
    #sudo scp /tmp/nsd_files/certs/www.nginxtraining.com.key  nginx:/etc/nginx/ssl/www.nginxtraining.com.key
    #sudo scp /tmp/nsd_files/certs/www.nginxtraining.com.key  nginx:/home/student/ssl/www.nginxtraining.com.key
    #sudo scp /tmp/nsd_files/certs/www.nginxtraining.com.csr  nginx:/home/student/ssl/www.nginxtraining.com.csr
    #sudo scp /tmp/nsd_files/certs/ca-cert-dashboard.crt      nginx:/etc/nginx/ssl/ca-cert-dashboard.crt
    #sudo scp /tmp/nsd_files/certs/www.nginxdashboard.com.crt nginx:/etc/nginx/ssl/www.nginxdashboard.com.crt
    #sudo scp /tmp/nsd_files/certs/www.nginxdashboard.com.key nginx:/etc/nginx/ssl/www.nginxdashboard.com.key    
    
    # restart nginx on nginx host
    sudo ssh nginx nginx -s stop
    sudo ssh nginx nginx

    # update local hosts file
    sudo mv /tmp/nsd_files/L1-L1-Intro/hosts_jump /etc/hosts
