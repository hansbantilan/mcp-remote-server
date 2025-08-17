FROM mcr.microsoft.com/playwright/mcp

EXPOSE 8001

ENTRYPOINT ["node", "cli.js", "--host", "0.0.0.0", "--port", "8001", "--headless", "--browser", "chromium", "--no-sandbox", "--isolated"]
