# Use a base Node.js image
FROM node:18.12.0-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which your Node.js app will run
EXPOSE 6000

# Command to run your Node.js application
CMD ["node", "app.js"]
