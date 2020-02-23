FROM centos:8

RUN dnf update -y \
 && dnf -y install epel-release \
 && dnf -y install bind-utils curl git lsof net-tools nmap-ncat openssl strace tar unzip which \
 && dnf -y install python3 python3-devel \
 && dnf clean all && rm -rf /var/cache/dnf

ARG TIMEZONE='Europe/Vienna'
RUN ln -sf /usr/share/zoneinfo/$TIMEZONE /etc/localtime
