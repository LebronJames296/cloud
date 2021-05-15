FROM registry.cn-shanghai.aliyuncs.com/jameshu/java8_maven3:2.0
WORKDIR /code
COPY ./ /code
VOLUME [ "/opt/maven/localRepository" ]
RUN mvn package -Dmaven.test.skip=true

COPY  target/*.jar /app.jar
CMD java -jar /app.jar
