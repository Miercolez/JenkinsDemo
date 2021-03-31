FROM openjdk:12-alpine
EXPOSE 8080
COPY ./target/JenkinsDemo-1.0-SNAPSHOT.jar /JenkinsDemo.jar

CMD ["java" , "-jar" , "/jenkinsdemo.jar"]