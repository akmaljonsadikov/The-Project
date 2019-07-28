#! /bin/bash

read -p "Enter  IP number :" ip
read -p "Enter the HOSTNAME :" hostname
#read -p "Enter hostgroupname :" hostgroupname
read -p "Enter hostgroupname Alias :" alias

cp -p /usr/local/nagios/etc/objects/localhost.cfg /usr/local/nagios/etc/servers/$hostname.cfg

        sed -i "s/localhost/$hostname/g" /usr/local/nagios/etc/servers/$hostname.cfg
        sed -i "s/"127.0.0.1"/$ip/" /usr/local/nagios/etc/servers/$hostname.cfg
        sed -i "s/"linux-servers"/$hostname/g" /usr/local/nagios/etc/servers/$hostname.cfg
        sed -i "s/Linux Servers/$alias/g" /usr/local/nagios/etc/servers/$hostname.cfg


systemctl restart nagios.service
