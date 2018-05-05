FROM java:8

MAINTAINER ramkuvel@gmail.com

ENV MULE_HOME /opt/mule

RUN mkdir /opt
RUN wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/4.1.1/mule-standalone-4.1.1.tar.gz
RUN tar xvf mule-standalone-4.1.1.tar.gz
RUN mv mule-standalone-4.1.1 mule


WORKDIR $MULE_HOME
RUN echo $MULE_HOME
RUN cd /opt/mule/
RUN ls -ltr bin/mule



ADD target/*.zip $MULE_HOME/apps
EXPOSE 8081
ENTRYPOINT ["./bin/mule"]
