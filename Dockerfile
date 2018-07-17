FROM centos/python-35-centos7

# change to root user
USER root

# install npm
RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install nodejs npm && \
    yum -y clean all

# this part will be used to install future packages
RUN chown -R 1001:0 /opt/app-root && chmod -R ug+rwx /opt/app-root

USER 1001
