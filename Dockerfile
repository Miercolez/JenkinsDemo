FROM openjdk:11-jre-slim-buster
EXPOSE 8080
COPY ./target/*.jar /JenkinsDemo.jar
ADD ./target/dependency/commons-lang3-3.12.0.jar **commons-lang3-3.12.0.jar

CMD ["java" , "-jar" , "/JenkinsDemo.jar"]
