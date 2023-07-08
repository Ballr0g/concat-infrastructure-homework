FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
EXPOSE 8080
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} PeopleApplication.jar
ENTRYPOINT ["java", "-jar", "/PeopleApplication.jar"]