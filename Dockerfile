FROM node:14

#Copy those 2 files, that way they not will be installed everytime
COPY ["package.json", "package-lock.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm install

COPY [".", "/usr/src/"]

EXPOSE 3000

#using nodemon to restart the application in case there are changes detected
CMD ["node", "index.js"]

