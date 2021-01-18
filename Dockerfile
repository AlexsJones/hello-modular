# Docker Image which is used as foundation to create
# a custom Docker Image with this Dockerfile
FROM node:15

# A directory within the virtualized Docker environment
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Installs all node packages
RUN yarn

# Bundle app source
COPY . .

# Uses port which is used by the application
EXPOSE 3000

# Finally runs the application
CMD [ "yarn", "start" ]
