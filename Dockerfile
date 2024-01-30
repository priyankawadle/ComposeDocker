FROM ubuntu

WORKDIR /app

RUN apt-get update
RUN apt-get install -y curl
RUN curl --silent https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

COPY  package*.json .
COPY . .

RUN npm install

EXPOSE 3000

CMD ["node" "app.js"]