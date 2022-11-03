FROM node:16.16-slim
WORKDIR usr/src/app
COPY package*.json ./
RUN npm install
# Copy local angular/nest code to the container
COPY . .
# Build production app
RUN npm run build:ssr
CMD ["npm", "run", "serve:ssr"]
