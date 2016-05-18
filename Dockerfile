FROM node:argon
RUN mkdir -p /usr/src/
COPY . /usr/src
WORKDIR /usr/src
RUN npm install
EXPOSE 8080
ENV PORT 8080
CMD ["npm", "start"]