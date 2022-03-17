FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
EXPOSE 8080
EXPOSE 5432
#run yarn build 
#run yarn global add serve
#CMD ["serve -s", "build/public"]
#CMD ["yarn", "build"]
RUN yarn setup
CMD ["yarn", "start"]
