FROM openjdk:11-slim

RUN apt-get update && apt-get install -y postgresql-client

# Create a non-root user and group and set permissions
RUN useradd -ms /bin/bash appuser
USER appuser

WORKDIR /app

COPY . /app

RUN javac Main.java

CMD ["java", "Main"]