FROM registry.cn-hangzhou.aliyuncs.com/acs/maven:3-jdk-8 AS bd
WORKDIR /code
COPY ./ /code
RUN mvn package -Dmaven.test.skip=true

FROM java:8
COPY --from=bd  /code/target/*.jar /app.jar
CMD java -jar /app.jar
