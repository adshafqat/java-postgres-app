FROM openjdk:11-slim

RUN apt-get update && apt-get install -y postgresql-client

WORKDIR /app

COPY . /app

RUN javac Main.java

CMD ["java", "Main"]