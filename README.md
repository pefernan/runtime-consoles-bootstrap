## Kogito Runtimes Consoles Quickstart

This Quickstart is an attempt to  bootstrap the [Process Usertasks Quarkus With Console](https://github.com/kiegroup/kogito-examples/tree/stable/process-usertasks-quarkus-with-console) example from *kogito-examples*.

In order to use it, please ensure you have Docker Compose installed on your machine, otherwise follow the instructions available in [here](https://docs.docker.com/compose/install/).

### Starting the quickstart

For Linux and MacOS:

```bash
./start.sh
```

For Windows:

Create a .env file with the content containing the version of the Kogito images you would like to run, example:

```bash
DOCKER_GATEWAY_HOST=172.17.0.1
```

Then run

```bash
docker-compose up
```


Once all services bootstrap, the following ports will be assigned on your local machine:

- Infinispan: 11222
- Kafka: 9092
- Data Index: 8180
- Management Console: 8280
- Task Console: 8380
- Keycloak: 8480
- Kogito-example: 8580

### Loading Process Instances

The quickstart comes with some pre-loaded instances of the **Hiring** process, in case you need starting more instances you can do it by launching the *load.sh* script in the *data* folder (check the *data.txt* file if you want to alter the process data).

If you want to do it manually, in a Terminal you can execute this command to start a **Hiring** process:

```bash
curl -H "Content-Type: application/json" -H "Accept: application/json" -X POST http://localhost:8080/hiring -d @- << EOF
{   
    "candidate": {
        "name": "Jon Snow",
        "email": "jsnow@example.com",
        "salary": 30000,
        "skills": "Java, Kogito"
    }
}
EOF
```

### Stopping the quickstart

To stop all services, simply run:

docker-compose stop
It is also recommended to remove any of stopped containers by running:

docker-compose rm
For more details please check the Docker Compose documentation.

docker-compose --help

### Accessing the Consoles

To access the consoles please open the following URLS in your browser:

* Management Console: [http://localhost:8280](http://localhost:8280)
* Task Console: [http://localhost:8380](http://localhost:8380)

You can access the consoles by using one of the following users:

| Login         | Password   | Roles               |
| ------------- | ---------- | ------------------- |
|    admin      |   admin    | *admin*, *managers* |
|    alice      |   alice    | *user*              |
|    jdoe       |   jdoe     | *managers*          |
