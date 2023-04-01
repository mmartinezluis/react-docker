# FROM node:13.12.0-alpine  
FROM node

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package*.json ./

RUN npm install

COPY . ./

CMD ["npm", "start"]


# Running the image on the command line

# docker run -it --rm \
# -v ${PWD}:/app  \
# -v /app/node_modules \
#  -p 3001:3000 \
#  -e CHODIKAR_USEPOLLING=true \
# <my-app-name>:dev

# -it starts the container in interactive mode.
# --rm removes the container and volumes after the container exits.
# -v ${PWD}:/app mounts the code into the container at "/app"
# -p 3001:3000 exposes port 3000 to other Docker containers on the same network (for inter-container communication) and port 3001 to the host.
# -e CHOKIDAR_USEPOLLING=true enables a polling mechanism via chokidar (which wraps fs.watch, fs.watchFile, and fsevents) so that hot-reloading will work. 


# Check the files in the container
# docker exec -it <container_id> sh
# ls -la