FROM jayjohnson/springxd-base
MAINTAINER Jay Johnson jay.p.h.johnson@gmail.com

USER root
ADD ./admin_start.sh /opt/spring-xd/start
RUN chown springxd:springxd /opt/spring-xd/start
RUN chmod u+x /opt/spring-xd/start
RUN apt-get install -y net-tools telnet curl wget vim

USER springxd

EXPOSE 9393

CMD ["/opt/spring-xd/start"]
