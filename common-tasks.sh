# enable debugging
set -x
PS4='+$(date +"%T.%3N"): '

# get lab-info.md for individual lab script bravais id
curl --silent https://raw.githubusercontent.com/learnf5/nsd/main/lab-info.md --output /tmp/lab-info.md
brav_id=$(awk -F '|' "/$LAB_ID/"' {print $2}' /tmp/lab-info.md)

# install 30 day nginx one trial licenses from Salesforce - EXPIRES April 4, 2025
# In order for NGINX to start & run from R33 and later, MUST have valid jwt license!
set +x
#original pathanme - if this works then delete the ones below without the "main" in the pathaname
curl --silent --remote-name-all --output-dir /tmp --header "Authorization: token $LIC_TOKEN" https://raw.githubusercontent.com/learnf5/eval-reg-keys/main/nginx/EXPIRES-April-4-2025/nginx-one-eval.{crt,key,jwt}
echo curl --silent --remote-name-all --output-dir /tmp --header "Authorization: token xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" https://raw.githubusercontent.com/learnf5/eval-reg-keys/main/nginx/EXPIRES-April-4-2025/nginx-one-eval.{crt,key,jwt}

set -x
until sudo scp /tmp/nginx-one-eval.crt nginx:/etc/ssl/nginx/nginx-repo.crt || (( count++ > 5 )); do sleep 5; done
until sudo scp /tmp/nginx-one-eval.key nginx:/etc/ssl/nginx/nginx-repo.key || (( count++ > 5 )); do sleep 5; done
until sudo scp /tmp/nginx-one-eval.jwt nginx:/etc/nginx/license.jwt || (( count++ > 5 )); do sleep 5; done

# common files for all labs
#sudo ssh nginx mkdir --parents /home/ubuntu/public_html/application1
#curl --silent --remote-name-all --output-dir /tmp https://raw.githubusercontent.com/learnf5/nag/main/common/ubuntu/public_html/index.html
#sudo scp /tmp/index.html                                   nginx:/home/ubuntu/public_html/index.html
#curl --silent --remote-name-all --output-dir /tmp https://raw.githubusercontent.com/learnf5/nag/main/common/ubuntu/public_html/application1/app1.html
#sudo scp /tmp/app1.html                                    nginx:/home/ubuntu/public_html/application1/

# run this lab's specific tasks saved on GitHub
curl --silent --output /tmp/$LAB_ID.sh https://raw.githubusercontent.com/learnf5/$COURSE_ID/main/$LAB_ID.sh
bash -x /tmp/$LAB_ID.sh

# restart NGINX
sudo ssh nginx systemctl stop nginx
sudo ssh nginx systemctl start nginx
