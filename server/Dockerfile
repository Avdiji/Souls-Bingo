FROM node:14 AS backend-builder

WORKDIR /app/src/backend

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .
CMD ["npm", "start"]