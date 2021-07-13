
# Specify a base image
# As we need a NodeJS to run the npm command, we can use the Node image with tag alpine, that means you will download the strict vers
# https://hub.docker.com/_/node?tab=description&page=1&ordering=last_updated
FROM node:alpine

# Use this as working directory. Actually, new NodeJS forbids locating files in the root directory, so this command is neccessary
WORKDIR /usr/app

# Copy only one file to the working folder in the container to make sure the next command will run from cashe if dockerfile for example will be changed
COPY ./package.json ./

# Install some dependencies 
RUN npm install

# Copy all files from current folder to the working folder in the container
COPY ./ ./


# Default command
CMD ["npm", "start"]