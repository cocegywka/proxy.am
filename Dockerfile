FROM node:10-alpine
ENV APP_ROOT /
ENV NODE_ENV production

WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}

RUN npm install
RUN npm run build

CMD ["npm", "run", "start"]
