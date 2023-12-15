FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package and app files 
COPY package.json ./
COPY package-lock.json ./

# Install app dependencies
RUN npm install

# Copy remaining files
COPY . . 

# Expose port
EXPOSE 3000

# Default command
CMD ["npm", "start"]
