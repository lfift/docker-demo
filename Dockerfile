FROM openjdk:8-jre-alpine
LABEL author=liufei
LABEL email=liu.ift@gmail.com
LABEL phone=13333333333
RUN ["mvn", "package"]
ADD ./target/docker-demo.jar /usr/home/app.jar
ENTRYPOINT ["java", "-jar", "/usr/home/app.jar"]