FROM ubuntu:latest
EXPOSE 8080
COPY ./target/JenkinsDemo-1.0-SNAPSHOT-jar-with-dependencies.jar /JenkinsDemo.jar

CMD ["java" , "-jar" , "/JenkinsDemo.jar"]