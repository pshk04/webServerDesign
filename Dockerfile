FROM openjdk:8

EXPOSE 80

WORKDIR /app
COPY . ./

RUN javac ./src/SimpleServer.java -d ./bin/

WORKDIR ./bin

CMD ["java", "SimpleServer", "80"]
