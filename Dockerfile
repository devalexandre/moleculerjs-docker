FROM node:lts-alpine

RUN mkdir /app
WORKDIR /app

RUN apk add --no-cache git

COPY package.json package-lock.json ./

RUN npm ci --silent
ENV RUNNING_MODE = if[$NODE_ENV=="production"];"start";"start:dev";fi

COPY . .

CMD ["npm ","$RUNNING_MODE"]
