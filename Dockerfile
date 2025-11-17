FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy bot files
COPY . .

# Run bot
CMD ["node", "index.js"]
