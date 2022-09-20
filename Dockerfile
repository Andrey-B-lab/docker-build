FROM node:alpine

WORKDIR /app

ARG SSH_KEY
ENV SSH_KEY=$SSH_KEY

COPY package.json .

RUN apk add git openssh-client

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN ssh-agent sh -c 'echo $SSH_KEY | base64 -d | ssh-add - ; npm install --loglevel verbose'

RUN npm install -g typescript

CMD ["npm", "run", "start:dev"]
