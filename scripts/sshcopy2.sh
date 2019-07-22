for ip in $(cat /myhosts)
do sudo ssh-copy-id -i ~/.ssh/id_rsa.pub $ip
done

