# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files first (for better caching)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose (not required for Discord bots but safe to include)
EXPOSE 3000

# Start the bot
CMD ["node", "index.js"]
