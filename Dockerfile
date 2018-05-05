FROM java:8

MAINTAINER ramkuvel@gmail.com

ENV MULE_HOME /opt/mule

ADD target/*.zip $MULE_HOME/apps

WORKDIR $MULE_HOME
RUN echo $MULE_HOME

RUN cd /opt/mule/
RUN ls -ltr ./bin/mule

ENTRYPOINT ["./bin/mule"]
EXPOSE 8081
