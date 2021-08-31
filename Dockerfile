FROM docker.io/node:alpine

WORKDIR /src

COPY . .
RUN npm config set registry http://registry.npmjs.org/
RUN npm install
RUN npm run build

ENTRYPOINT [ "npm", "start" ]
EXPOSE 8080
