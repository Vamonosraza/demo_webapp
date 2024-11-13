# Pull base image
FROM node:14

# Set working directory
WORKDIR /demo_webapp

#Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]