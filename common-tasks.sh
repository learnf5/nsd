# enable debugging
set -x
PS4='+$(date +"%T.%3N"): '

# get lab-info.md for individual lab script bravais id
curl --silent https://raw.githubusercontent.com/learnf5/nsd/main/lab-info.md --output /tmp/lab-info.md
brav_id=$(awk -F '|' "/$LAB_ID/"' {print $2}' /tmp/lab-info.md)

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
