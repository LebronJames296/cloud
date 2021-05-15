FROM registry.cn-shanghai.aliyuncs.com/jameshu/java8_maven3:2.0
WORKDIR /code
COPY ./ /code
RUN mvn package -Dmaven.test.skip=true


CMD cp target/*.jar /app.jar \
&& java -jar /app.jar