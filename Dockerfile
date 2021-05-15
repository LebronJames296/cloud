FROM registry.cn-shanghai.aliyuncs.com/jameshu/java8_maven3:1.0 AS bd
WORKDIR /code
COPY ./ /code
RUN mvn package -Dmaven.test.skip=true

COPY  /target/*.jar /app.jar
CMD java -jar /app.jar
