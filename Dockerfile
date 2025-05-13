FROM node:18-alpine

WORKDIR /app

COPY app.js .

RUN npm install cross-spawn@7.0.5 --save

EXPOSE 3000

CMD ["node", "app.js"]

