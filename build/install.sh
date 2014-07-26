#!/bin/bash
set -e
source /build/buildconfig
set -x

# Upgrade everything
apt-get update
apt-get dist-upgrade -y --no-install-recommends

# Add apt repo
curl -s http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
echo deb http://pkg.jenkins-ci.org/debian binary/ \
  > /etc/apt/sources.list.d/jenkins.list
apt-get update

# Install jenkins
$minimal_apt_get_install jenkins=${jenkins_version}

# Install service script
mkdir -p /etc/service/jenkins
cp /build/run.sh /etc/service/jenkins/run
