FROM openjdk:17-jdk
ARG JAR_FILE=build/libs/configserver-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENV REPO_PATH=configs
ENV REPO_BRANCH=main

ENTRYPOINT ["java", "-Drepo.uri=${REPO_URI}", "-Drepo.path=${REPO_PATH}", "-Drepo.branch=${REPO_BRANCH}","-jar","app.jar"]

EXPOSE 3999