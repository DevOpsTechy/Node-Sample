FROM node:18-alpine

WORKDIR /app

COPY app.js .

RUN npm update cross-spawn

EXPOSE 3000

CMD ["node", "app.js"]

