FROM node:18-alpine as sastamedicine-backend

WORKDIR /opt/app/backend



COPY package.json .

RUN set -x && \
    yarn install

COPY ./entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh




# USER Sastamedicine

COPY . .

CMD /bin/entrypoint.sh