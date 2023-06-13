FROM eclipse-temurin:8-jre
ENV JAVA_OPTS="-Xms512m -Xmx512m -XX:+UseG1GC"
## 创建目录，并使用它作为工作目录
RUN mkdir -p /server
WORKDIR /server
COPY ./test-docker-0.0.1-SNAPSHOT.jar app.jar
CMD java ${JAVA_OPTS} -jar app.jar