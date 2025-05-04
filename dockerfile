FROM node:23-alpine

WORKDIR /app

# Copy all files first, so TypeScript can compile
COPY . .

# Install dependencies
RUN npm install

# Build is already run as part of npm install via the prepare script
# But we'll make sure it's executable
RUN chmod +x dist/index.js

# Run the MCP server
CMD ["node", "dist/index.js"]