#
# Jenkins image
#
# https://github.com/opendocker/jenkins
#

# ubuntu base
FROM opendocker/ubuntu:0.1.1

# Add our build directory
RUN mkdir /build
ADD . /build

# Run our stuff
RUN \
	/build/install.sh && \
	/build/cleanup.sh

# Jenkins port
EXPOSE 8080

# Jenkins data dir
VOLUME ["/var/lib/jenkins"]

# Set default command
CMD ["/sbin/my_init"]
