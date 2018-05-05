FROM mule-esb4.1.1

MAINTAINER ramkuvel@gmail.com

ADD target/*.zip $MULE_HOME/apps
EXPOSE 8081
ENTRYPOINT ["/opt/mule/bin/mule"]
