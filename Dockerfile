# Use the desired Node.js version
FROM node:14-alpine

# Set the working directory for the container
WORKDIR /myapp

# Copy only package.json and package-lock.json first
COPY package.json package-lock.json /myapp/

# Install npm dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to start the application
CMD ["npm", "run", "start"]
