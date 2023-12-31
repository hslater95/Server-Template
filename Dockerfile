# Use a lightweight Node.js image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application files to the working directory
COPY . .

# Expose port 3001
EXPOSE 3001

# Start the Node.js/Express server
CMD ["node", "index.js"]  # Replace "app.js" with the entry point of your application