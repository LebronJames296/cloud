FROM java:8

VOLUME /tmp

# 添加并且更名jar 
ADD http-demo-1.0-SNAPSHOT.jar app.jar

# 运行jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
