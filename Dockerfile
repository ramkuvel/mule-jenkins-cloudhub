FROM java:8

MAINTAINER ramkuvel@gmail.com

ENV MULE_HOME /opt/mule

ADD target/*.zip $MULE_HOME/apps

WORKDIR $MULE_HOME

VOLUME $MULE_HOME/apps
VOLUME $MULE_HOME/conf
VOLUME $MULE_HOME/domains
VOLUME $MULE_HOME/logs

ENTRYPOINT ["./bin/mule"]
EXPOSE 8081
