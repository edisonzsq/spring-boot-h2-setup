# Spring Boot Starter

## How to use

1. Fork this project
1. Add your DDL script [here](./m3project/src/main/resources/schema.sql)
1. Add your DML script [here](./m3project/src/main/resources/data.sql)
1. Continue setting up your `@Entity` classes and `@Repository` interfaces
1. You may access the database using the h2-console by visiting the `/h2-console` path [here](http://localhost:8080/h2-console).

<img src="./assets/h2-console.png" />

|Key|Value|
|-|-|
|Driver Class|org.h2.Driver|
|JDBC URL|jdbc:h2:mem:m3db|
|User Name|sa|
|Password|password|

## Dockerized Commands

You can still run the Spring Boot Application with docker without any JDK/JRE installed. You should understand what Option A is doing before going for Option B.

```sh
cd ./spring-boot-h2-setup/m3project 

# Option A - manual docker command to build and run the project
docker build -t "h2_starter" . 
docker run -d -p 8088:8080 --name "container_h2_starter" h2_starter

# Stop container for rebuild
docker stop container_h2_starter
docker rm container_h2_starter

# Option B (better choice) - use of docker compose
docker compose up 


# Rebuild container
docker compose up --build # add a --build flag to rebuild
```

Visit `http://localhost:8088/test` on browser for "Test ok" response to confirm the application is running.

End