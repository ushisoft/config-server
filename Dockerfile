FROM java:8

ADD target/config-server-0.0.1-SNAPSHOT.jar app.jar

VOLUME /tmp
VOLUME /target

RUN bash -c 'touch /app.jar'

EXPOSE 8888

ENTRYPOINT ["java","-jar","/app.jar"]