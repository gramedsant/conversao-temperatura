FROM node:16.15.0
WORKDIR /usr/src/app
COPY src/package*.json ./
RUN npm install 
COPY ./src .
RUN npm test
EXPOSE 8080
CMD ["npm", "start"]