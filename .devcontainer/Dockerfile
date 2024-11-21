FROM node:iron-alpine3.19

RUN apk update && apk add --no-cache git


WORKDIR /workspaces

COPY . .

WORKDIR /workspaces/dev-env

RUN chmod +x ./.devcontainer/post-create-script.sh

RUN ./.devcontainer/post-create-script.sh

CMD ["bash", "./update-private-ip-env.sh"]

EXPOSE 8081 
