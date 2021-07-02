#!/bin/bash

## Pre Requisites

sudo apt-get update

sudo apt install yum -y

## First Install Java 1.8

sudo apt-get update

sudo apt-get install default-jre -y

sudo apt-get install default-jdk -y

######################################################Step 1 — Installing Jenkins

##  First, we’ll add the repository key to the system.

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

## When the key is added, the system will return OK. Next, we’ll append the Debian package repository address to the server’s sources.list:

echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list

## When both of these are in place, we’ll run update so that apt-get will use the new repository:

sudo apt-get update

## Finally, we’ll install Jenkins and its dependencies, including Java:

sudo apt-get install jenkins --allow-unauthenticated -y -y


###################################################Step 2 — Starting Jenkins


## Let’s start Jenkins using systemctl:

sudo systemctl start jenkins

## Since systemctl doesn’t display output, you can use its status command to verify that Jenkins started successfully:

sudo systemctl status jenkins

#################################################Opening the Firewall

##By default, Jenkins runs on port 8080, so let’s open that port using ufw:

sudo ufw allow 8080

## Check ufw’s status to confirm the new rules:

sudo ufw status

## Note: If the firewall is inactive, the following commands will allow OpenSSH and enable the firewall:

sudo ufw allow OpenSSH
sudo ufw enable 

#select y for enable 

## Check ufw’s status to confirm the new rules:
sudo ufw status

##Output
##Status: active

##To                         Action      From
##--                         ------      ----
##OpenSSH                    ALLOW       Anywhere
##8080                       ALLOW       Anywhere
##OpenSSH (v6)               ALLOW       Anywhere (v6)
##8080 (v6)                  ALLOW       Anywhere (v6)


## follow the steps from the below URL

##https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-18-04


