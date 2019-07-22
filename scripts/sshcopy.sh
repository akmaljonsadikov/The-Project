#!/bin/bash




for ip in $(cat /myhosts)
do sshpass -p password ssh -o StrictHostKeyChecking=no -l root ${ip}
done



