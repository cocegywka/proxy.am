FROM node:10-alpine
ENV APP_ROOT /web
ENV NODE_ENV production

WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}
COPY package.json ./
RUN rm -rf node_modules/
RUN npm cache clean --force
RUN npm install
RUN npm run build

CMD ["npm", "run", "start"]
