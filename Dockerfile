FROM node:argon
RUN mkdir -p /usr/src/
VOLUME ["/usr/src/flows", "/usr/src/settings"]
COPY package.json /usr/src
COPY settings.js /usr/src/settings
WORKDIR /usr/src
RUN npm install
EXPOSE 1880
CMD ["npm", "start"]