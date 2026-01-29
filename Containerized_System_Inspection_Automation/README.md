# Jenkins Docker CI Pipeline

## This project demonstrates a complete CI pipeline using Jenkins and Docker. The pipeline checkouts the code from the central repo(GITHUB) and builds a Docker image and then execute the script in the container.
The goal was to understand the real world CI behaviour,container execution,process handling and debug the errors that occurs in pipeline.During the pipeline execution process i learnt the line ending difference that exists in the different run environments and how to debug them correctly.
### Tech Stacks
- Jenkins 
- Docker
- Git Hub
- Bash Scripts
### Pipeline Flow
1.Jenkins checks out the repository from GitHub.
2.Docker image is built using Ubuntu 22.04.
3.Shell script is copied and made executable.
4.Line ending normalization is enforced for Linux compatibility.
5.Container is executed and the script runs inside it.
6.Jenkins marks the build successful based on exit code.

### What the Script Does

The script performs basic Linux diagnostics inside the container.
- Prints the current user.

- Prints the working directory.

- Displays disk usage.

- Lists running processes.

- Starts a background process safely.

- Verifies process visibility.

- Terminates the background process cleanly.