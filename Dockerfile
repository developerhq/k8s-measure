FROM centos:centos7

RUN yum --disableplugin=subscription-manager -y install iperf3 \
  && yum --disableplugin=subscription-manager -y install wget \
  && wget http://www.iozone.org/src/current/iozone-3-490.x86_64.rpm \
  && rpm -i iozone-3-490.x86_64.rpm \
  && yum --disableplugin=subscription-manager clean all

CMD /bin/bash
