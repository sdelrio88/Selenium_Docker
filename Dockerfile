
FROM bellsoft/liberica-openjdk-alpine:21

# Install curl jq
RUN apk add curl jq

# workspace
WORKDIR /home/selenium-docker

# Add the required files to the root directory ./
ADD target/docker-resources     ./
ADD https://raw.githubusercontent.com/sdelrio88/Selenium_Docker/master/runner.sh           runner.sh

# Start the runner.sh
ENTRYPOINT sh runner.sh

