FROM node:14 AS frontend-builder

WORKDIR /app/src/frontend

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "start"]