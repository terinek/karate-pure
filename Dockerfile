FROM openjdk:8-jre-alpine3.9

LABEL maintainer="Viktor Terinek"
LABEL description="Karate API"

# Set the working directory environment variable
ENV KARATE_WORK_DIR /

ADD source/karate.jar /

# A dedicated work folder to allow for the creation of temporary files
WORKDIR ${KARATE_WORK_DIR}
