# Use the official Node.js 18 image as the base image
FROM node:18
 
# Set the working directory inside the container
WORKDIR /usr/src/app
 
# Copy package.json and package-lock.json (if available)
COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of the application code
COPY . .
 
# Expose the port the app runs on (e.g., 3000)
EXPOSE 3000
 
# Command to run the app
CMD ["node", "app.js"]
