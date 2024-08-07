# Docker_security

## Project Objective

The goal of this project is to set up Docker containers for an application named "todo-app" configured to run with a non-root user. Running applications inside Docker containers with a non-root user is a critical security best practice. It minimizes the risk of the container having excessive privileges that could be exploited by attackers if any vulnerabilities are discovered. This approach helps ensure that even if an attacker compromises the container, their ability to perform malicious actions is restricted.

## Environment Configuration

### 1. Modify the `.env` File

- Locate the `.env` file in the root directory of your project.
- Change the `MY_user` variable to the username you want to use within the container. For example, if you want to use the username `myuser`, update the variable accordingly.

### 2. Adjust Configuration in `src/persistence/sqlite.js`

- Open the `sqlite.js` file located in the `src/persistence/` directory.
- Ensure that the configuration within this file matches the username specified in the `.env` file.
- Pay particular attention to the file path configuration. The relevant line is found on line 3 of the file, specifically under `/home/myuser/app/todos/todo.db`.
- Update the SQLite file path to reflect the correct username. For instance, if you have set `newuser` as the username in the `.env` file, the path should be updated to `/home/newuser/app/todos/todo.db`.

## Building and Deploying Containers

To build the Docker image and deploy the containers, run the following command:

```bash
docker-compose up --build
```
This command triggers the Docker build process according to the instructions in the Dockerfile and then starts the containers as defined in the docker-compose.yml file.

Accessing the Application
Once the containers are up and running, open your web browser and navigate to the following URL to access the application:
http://localhost:3000

This URL will direct you to the "todo-app" application, which is now running within the configured Docker containers.

Additional Notes
Ensure that all file paths and environment variables are correctly set up to avoid configuration issues.
Regularly check for updates to Docker and the Docker Compose tool to benefit from the latest features and security patches.
Consider implementing additional security measures such as network segmentation and container scanning to further protect your application and infrastructure.
This approach not only provides a secure runtime environment but also aligns with best practices for containerized applications, ensuring both functionality and security are maintained.
