FROM mcr.microsoft.com/playwright:v1.40.0-focal

WORKDIR /app

# Install the MCP server
RUN npm install -g @playwright/mcp@latest

# Make sure Chrome is installed in addition to what's in the base image
RUN npx playwright install chrome

EXPOSE 8001

CMD ["npx", "@playwright/mcp@latest", "--host", "0.0.0.0", "--port", "8001", "--isolated"]
