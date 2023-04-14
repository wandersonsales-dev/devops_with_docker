# Starts from the ubuntu:20.04 image
FROM ubuntu:20.04

# Use /usr/src/app as our workdir.
WORKDIR /usr/src/app

# Execute a command with `/bin/bash -c` prefix
RUN apt update
RUN apt install curl -y

# Copy the script.sh file from this location to /usr/src/app creating /usr/src/app/script.sh
COPY script.sh .

# Execute script.sh on container start
ENTRYPOINT ["./script.sh"]
