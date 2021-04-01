FROM openjdk:12-alpine
EXPOSE 8080
COPY ./target/*jar-with-dependencies.jar /JenkinsDemo.jar

CMD ["java" , "-jar" , "/JenkinsDemo.jar"]
