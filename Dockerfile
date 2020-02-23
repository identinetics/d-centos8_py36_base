FROM centos:8

RUN dnf update -y \
 && dnf -y install bind-utils curl git \
 && dnf -y install lsof net-tools nmap-ncat \
 && dnf -y install openssl strace tar unzip which \
 && dnf -y install python3 python3-devel \
 && dnf clean all && rm -rf /var/cache/dnf

ARG TIMEZONE='Europe/Vienna'
RUN ln -sf /usr/share/zoneinfo/$TIMEZONE /etc/localtime
