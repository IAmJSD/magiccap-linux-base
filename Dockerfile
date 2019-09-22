FROM node:12-alpine
RUN apk add git python make g++ wget
WORKDIR /var/magiccap
RUN wget https://raw.githubusercontent.com/MagicCap/MagicCap/master/package.json
RUN wget https://raw.githubusercontent.com/MagicCap/MagicCap/master/package-lock.json
RUN npm i
RUN rm package.json
RUN rm package-lock.json
