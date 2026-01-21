FROM node:16-slim

WORKDIR /app

# Copy all files
COPY . .

# Install yarn
RUN npm install -g yarn

# Install all dependencies using yarn workspaces
RUN yarn install

# Set working directory to server
WORKDIR /app/packages/server

# Expose port
EXPOSE 8081

# Start server
CMD ["node", "src/index.js"]
