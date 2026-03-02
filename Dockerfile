FROM node 
WORKDIR /app
COPY package*.json .
RUN npm install
ENV MONGO_URI=mongodb://mongodb:27017/AFF-Docker
ENV PORT=3015
COPY . . 
EXPOSE 3015
CMD [ "npm start" ]
