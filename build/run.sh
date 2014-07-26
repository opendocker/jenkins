#!/bin/bash

mkdir -p /var/lib/jenkins
chown jenkins:jenkins /var/lib/jenkins

/sbin/setuser jenkins java -jar /usr/share/jenkins/jenkins.war
