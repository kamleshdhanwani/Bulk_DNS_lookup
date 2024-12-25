# Docker Management Script 🚀

Welcome to the Docker Management Script repository! This Bash script is designed to simplify the process of managing Docker containers, images, and configurations. It includes a variety of options for building, running, and managing Docker containers, all from a simple command-line interface. Additionally, this script includes automation for Dockerfile handling to build images and manage containers effectively.

 Table of Contents 📚

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Commands](#commands)
- [Contributing](#contributing)
- [License](#license)

 Features 🌟

- List running and all containers.
- Start, stop, and remove containers.
- Pull Docker images from Docker Hub.
- Install Docker on your system.
- Build Docker images from Dockerfiles.
- Build and run Docker containers from Dockerfiles.
- Rename containers.
- Search containers by name.
- Automated installation of necessary dependencies (e.g., Docker).
  
 Installation ⚙️

# Prerequisites

- Linux-based OS (Ubuntu, Debian, CentOS, etc.)
- Docker installed on your system (if not installed, the script can handle it).
- Bash shell (standard on most Linux systems).

# Steps to Install

1. Clone the repository:
   ```bash
   git clone https://github.com/kamleshdhanwani/linux.git
   cd linux
   ```

2. Make the script executable:
   ```bash
   chmod +x dockmanage.sh
   ```

3. Run the script:
   ```bash
   ./dockmanage.sh
   ```

# Docker Installation (Optional)

If you don't have Docker installed, the script can install it for you. Simply choose option `8` to install Docker.

 Usage 📋

This script provides an interactive menu to manage your Docker containers and images.

# Running the Script

To run the script, open your terminal and execute:

```bash
./dockmanage.sh
```

You will be presented with a menu to manage Docker containers and images.

# Dockerfile Automation

The script also provides functionality to build and run Docker images from Dockerfiles:
- Option 10: Build a Docker image from a Dockerfile.
- Option 11: Build and run a Docker container from a Dockerfile.

You can specify the Dockerfile path and image tag to automate the Docker build and run process.

 Commands 🖥️

Here are the available options in the interactive script:

1. List running containers: Displays a list of currently running containers.
2. List all containers: Displays a list of all containers (including stopped).
3. Start a container: Starts a specified container by its ID or name.
4. Stop a container: Stops a running container by its ID or name.
5. Remove a container: Removes a container by its ID or name.
6. Search a container by name: Search for a container by its name.
7. Pull/Download an image: Pulls a Docker image from Docker Hub.
8. Install Docker: Installs Docker on your system if not already installed.
9. Name a container: Renames a container.
10. Build a Docker image from Dockerfile: Builds a Docker image from the specified Dockerfile.
11. Build and Run a Docker container: Builds an image from a Dockerfile and runs the container.

 License 📝

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

 Link to Script

You can find the full script on GitHub here: [Docker Management Script](https://github.com/kamleshdhanwani/linux/blob/main/dockmanage.sh) 
