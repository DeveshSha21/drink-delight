FROM openjdk:8-jdk-alpine
EXPOSE 8084:8084
VOLUME /tmp
#RUN gradlew build
ADD build/libs/*.jar spring_boot.jar
ENTRYPOINT [ "java", "-jar", "spring_boot.jar"]