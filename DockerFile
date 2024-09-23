# Usando a imagem oficial do OpenJDK
FROM openjdk:17-jdk-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo JAR gerado para dentro do container
COPY target/postgresql-demo-0.0.1-SNAPSHOT.jar /app/postgresql-demo.jar

# Expõe a porta que o Spring Boot utiliza
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "postgresql-demo.jar"]