# File Browser - SaM

This is a simple file browser written in PHP that allows you to navigate through your files and directories, create new folders, upload files, rename files/folders, and delete files/folders. The file browser has a basic user interface that displays the current directory path and a table of files and folders with their types and sizes. You can easily customize the file browser by changing the CSS styling or adding new features to the PHP code.

## Installation


To use this file browser, you need to have PHP installed on your server. You can download the PHP files and copy them to your server's directory. Then, you can access the file browser by opening the `index.php` file in your web browser.

## Deploy by Docker

This Dockerfile uses the official `php:7.4-apache` image as the base image, and installs the necessary PHP extensions and dependencies required to run the file browser. It then copies the contents of the current directory to the `/var/www/html/` directory in the container, which is where the Apache web server looks for files to serve.

You can build a Docker image by running the `docker build` command in the same directory as the Dockerfile. For example, if you saved the Dockerfile in a directory called "my-app", you can build the Docker image by running:

```
cd my-app
docker build -t my-app-image .
```

This will build a Docker image with the tag "my-app-image" using the Dockerfile in the current directory. You can then run a container using this image by running:

When you build and run the container using this Dockerfile, the file browser should be accessible on port 80 of the container's IP address or hostname.

```
docker run -p 8080:80 my-app-image
```
This will start a container using the "my-app-image" image and map port 80 in the container to port 8080 on the host machine. You can then access the application in your web browser by navigating to **localhost:8080**.

## Usage

The file browser displays the current directory path at the top of the page, and a table of files and folders with their types and sizes. You can navigate through your files and directories by clicking on the folder names. To create a new folder, enter a name in the input field and click the "Create" button. To upload a file, click the "Choose File" button and select a file from your computer, then click the "Upload" button. To rename or delete a file/folder, enter the new name (if renaming) or click the "Delete" button (if deleting), and then click the corresponding button.

## License

This project is licensed under the MIT License. You are free to use, copy, modify, and distribute the code as long as you include the license file and give credit to the original author.

## Credits

This file browser was developed by Sathira Sri Sathsara. If you have any questions or comments, you can contact me at sathira@enforcers.lk.
