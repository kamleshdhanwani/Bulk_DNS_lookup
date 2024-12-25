#!/bin/bash

espeak-ng -s 120 "Welcome to the Docker Management Script"

while true; do
    echo "--------------------------"
    echo "Docker Management Script"
    echo "--------------------------"
    echo "1.    List running containers"
    echo "2.    List all containers"
    echo "3.    List images"
    echo "4.    Remove a image"
    echo "5.    Start a container"
    echo "6.    Stop a container"
    echo "7.    Remove a container"
    echo "8.    Search a container by name"
    echo "9.    Pull/Download an image"
    echo "10.   Install Docker"
    echo "11.   Name a container"
    echo "12.   Check Docker system status"
    echo "13.   Monitoring container resource usage"
    echo "14.   Check History"
    echo "0.    Exit"
    echo "========================="
    echo -n "Enter your choice: "
    read -r choice

    case "$choice" in
    0)
        echo "Goodbye!"
        exit 0
        ;;
    1)
        echo "Running containers:"
        docker ps | head -n 10
        ;;
    2)
        echo "All containers:"
        docker ps -a | awk '{print $1, $2, $7}' | column -t
        ;;
    3)
        echo "Docker Images"
        docker images
        ;;
    4)
        echo "Enter the image name or id to remove"
        read -r container_id
        docker rmi "$container_id"
        echo "Image $container_id removed successfully."
        ;;
    5)
        echo -n "Enter the container ID or name to start: "
        read -r container_id
        if docker start "$container_id"; then
            echo "Container $container_id started successfully."
        else
            echo "Failed to start container $container_id."
        fi
        ;;
    6)
        echo -n "Enter the container ID or name to stop: "
        read -r container_id
        if docker stop "$container_id"; then
            echo "Container $container_id stopped successfully."
        else
            echo "Failed to stop container $container_id."
        fi
        ;;
    7)
        echo -n "Enter the container ID or name to remove: "
        read -r container_id
        docker rm "$container_id"
        ;;
    8)
        echo -n "Enter the container name to search: "
        read -r container_name
        docker ps -a | grep "$container_name"
        ;;
    9)
        echo -n "Enter the image name to pull (e.g., ubuntu:latest): "
        read -r image_name
        docker pull "$image_name"
        ;;
    10)
        echo "Installing Docker..."
        sudo apt update && sudo apt install -y docker.io
        sudo systemctl start docker
        if sudo systemctl enable docker; then
            echo "Docker installed and started successfully."
        else
            echo "Failed to start Docker service."
        fi
        ;;
    11)
        echo -n "Enter the container ID to rename: "
        read -r container_id
        echo -n "Enter the new name for the container: "
        read -r new_name
        docker rename "$container_id" "$new_name"
        echo "Container renamed to $new_name."
        ;;
    12)
        echo "Checking Docker Status ..."
        docker info
        ;;
    13)
        echo "Monitoring container resource usage..."
        docker stats --no-stream
        ;;
    14)
        docker images
        echo "Enter image id or name"
        read -r container_id
        echo "Checking history..."
        docker history "$container_id"
        ;;
    *)
        echo "Invalid choice. Please select a valid option."
        ;;
    esac
done