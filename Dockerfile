# SPHIRE Installation 
# Based on CENTOS6

FROM centos:centos6

MAINTAINER Thorsten Wagner (https://github.com/thorstenwagner)

# this is a non-interactive automated build - avoid some warning messages
ENV CENTOS_FRONTEND noninteractive

# update repositories
RUN yum update 

# install wget
RUN yum install wget which -y

# get sphire
RUN mkdir SPHIRE
RUN mkdir SPHIRE-INSTALL
RUN CD SPHIRE-INSTALL
RUN wget --no-certificates https://ftp.gwdg.de/pub/misc/sphire/sphire_beta_20170602/sphire_beta_20170602.linux64.centos6.sh
RUN bash sphire_beta_20170602.linux64.centos6.sh -b -p ../SPHIRE
