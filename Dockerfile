FROM mcr.microsoft.com/playwright:v1.40.0-focal

WORKDIR /app

# Install the MCP server
RUN npm install -g @playwright/mcp@latest

EXPOSE 8001

CMD ["npx", "@playwright/mcp@latest", "--host", "0.0.0.0", "--port", "8001", "--isolated", "--no-sandbox", "--browser", "chromium"]
