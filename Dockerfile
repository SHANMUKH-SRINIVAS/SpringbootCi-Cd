FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY .mvn/ .mvn

COPY mvnw .

COPY pom.xml .

COPY src/ src/

EXPOSE 8080

COPY  target/ZZZZ-CICD-0.0.1-SNAPSHOT.jar app.jar

CMD ["java" , "-jar" , "app.jar"]