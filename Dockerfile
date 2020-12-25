 # Create image based on the official Node 6 image from the dockerhub
FROM node:12

# Create a directory where our app will be placed
RUN mkdir -p /home/ubuntu/app

# Change directory so that our commands run inside this new directory
WORKDIR /home/ubuntu/app

# Copy dependency definitions
COPY package.json /home/ubuntu/app

# Install dependecies
RUN npm install

# Get all the code needed to run the app
COPY . /home/ubuntu/app

# Expose the port the app runs in
EXPOSE 3000

# Serve the app
CMD ["npm", "start"]
