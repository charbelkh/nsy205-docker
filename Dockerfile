FROM node:10-alpine
WORKDIR /app
COPY . /app
EXPOSE 3000
CMD ["node", "/app/server.js"]
