FROM node:10.16.0

WORKDIR /dist
COPY package.json /dist
RUN npm i

COPY . /dist
CMD ["npm", "start"]