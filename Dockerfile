FROM openjdk:8
ADD target/spring-boot-dockers.jar spring-boot-dockers.jar
ENTRYPOINT ["java","-jar","/spring-boot-dockers.jar"]
EXPOSE 8080

FROM openjdk:8
RUN mkdir /app
RUN chmod 777 /app
WORKDIR /app
ADD target/spring-boot-dockers.jar /app/spring-boot-dockers.jar
ENTRYPOINT ["java","-jar","/app/spring-boot-dockers.jar"]
EXPOSE 8080