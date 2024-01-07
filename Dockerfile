FROM node

WORKDIR /workspace

RUN npm i -g npm@latest

WORKDIR /code

COPY bin .

RUN npm i

# For doc purpose only
# RUN bun create vite <app_name> --template solid-ts

CMD "bun run dev"