FROM java:8

MAINTAINER ramkuvel@gmail.com

ENV MULE_HOME /opt/mule

RUN mkdir /opt
RUN cd /opt
RUN wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/4.1.1/mule-standalone-4.1.1.tar.gz
RUN tar xvf mule-standalone-4.1.1.tar.gz
RUN mv mule-standalone-4.1.1 mule

WORKDIR $MULE_HOME

VOLUME $MULE_HOME/apps
VOLUME $MULE_HOME/conf
VOLUME $MULE_HOME/domains
VOLUME $MULE_HOME/logs

ENTRYPOINT ["./bin/mule"]
