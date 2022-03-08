FROM alpine:3.15
RUN apk add --update nodejs npm python3 make g++
WORKDIR /home/gapp/
COPY . .
RUN npm install -g gatsby-cli
RUN npm install
EXPOSE 8000
CMD [ "npm", "run", "docker:dev" ]
