# Secure MCP Server with NGINX, Supergateway, and Render

How to securely expose a Model Context Protocol (MCP) Server using Supergateway, protected by NGINX basic authentication, and deployed to Render. The full article is on [dev.to](https://dev.to/datitran/secure-mcp-server-with-nginx-supergateway-render-4i80).

## Overview

**Model Context Protocol (MCP)** is an emerging open standard for connecting AI assistants like Claude to external tools. This setup allows running MCP services remotely and securely.

## Architecture

- **MCP Server**: Based on `@openbnb/mcp-server-airbnb`.
- **Supergateway**: Bridges `stdio`-based MCP servers to SSE/WebSocket.
- **NGINX**: Handles SSL termination and basic authentication.
- **Render**: Deploys the combined service in the cloud using Docker.

### Features

- Expose MCP via HTTP (SSE/WebSocket).
- Secure access using Basic Auth.
- Deploy seamlessly on Render.

## © Copyright

See [LICENSE](LICENSE) for details.
