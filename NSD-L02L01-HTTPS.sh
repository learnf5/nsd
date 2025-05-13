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

    sudo scp /tmp/nsd_files/scripts/curl_script.sh            nginx:/home/student/curl_script.sh
    sudo ssh nginx chmod +x /home/student/curl_script.sh
    sudo ssh nginx chown student:student /home/student/curl_script.sh 

    sudo ssh nginx mkdir /etc/nginx/SecureUpstreams
    sudo scp /tmp/nsd_files/L2-L2-SecUp/juice.conf                nginx:/etc/nginx/SecureUpstreams/juice.conf
    sudo scp /tmp/nsd_files/L2-L2-SecUp/api_server.conf           nginx:/etc/nginx/SecureUpstreams/api_server.conf
    sudo scp /tmp/nsd_files/L2-L2-SecUp/ssl-params.conf           nginx:/etc/nginx/SecureUpstreams/ssl-params.conf
    sudo scp /tmp/nsd_files/L2-L2-SecUp/proxy-ssl-params.conf     nginx:/etc/nginx/SecureUpstreams/proxy-ssl-params.conf    
      
    
    # restart nginx on nginx host
    sudo ssh nginx nginx -s stop
    sudo ssh nginx nginx

    # update local hosts file
    sudo mv /tmp/nsd_files/L1-L1-Intro/hosts_jump /etc/hosts
