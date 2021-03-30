FROM node:latest as node
COPY ./target/JenkinsDemo-1.0-SNAPSHOT.jar $DEPLOY_DIR