FROM java:8

MAINTAINER ramkuvel@gmail.com

ENV MULE_HOME /opt/mule

ADD target/*.zip $MULE_HOME/apps

WORKDIR $MULE_HOME

ENTRYPOINT ["./bin/mule"]
EXPOSE 8081
