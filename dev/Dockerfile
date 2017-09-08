FROM centos:7

RUN yum -y install git
RUN git clone https://github.com/nasa-gibs/onearth.git /home/onearth/

RUN yum install -y epel-release centos-release-scl
RUN yum -y install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-centos96-9.6-3.noarch.rpm

# Download Onearth RPMs
RUN mkdir -p /home/onearth/dist
RUN cd /home/onearth/dist
RUN curl -LO https://github.com/nasa-gibs/onearth/releases/download/v1.3.1/onearth-1.3.1.el7.tar.gz
RUN tar -zxvf onearth-*.tar.gz

# Install onearth & gibs-gdal RPMs
RUN yum -y install gibs-gdal-*
RUN yum -y install onearth-*

# Run setup
CMD /home/onearth/docker/el7/run-onearth.sh

#ENTRYPOINT /usr/sbin/init

# Configure full demo
#RUN /home/onearth/src/demo/examples/default/configure_demo.sh
#RUN /home/onearth/src/demo/examples/reproject/configure_demo.sh

# Restart Apache server
#CMD apachectl -D FOREGROUND
