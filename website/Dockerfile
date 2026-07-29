FROM nginx
WORKDIR /root

# install certbot dependencies

RUN apt update
RUN apt install python3 python3-dev python3-venv libaugeas-dev gcc -y
RUN apt-get remove certbot
RUN apt install cron -y


# copy the default config
COPY conf.d/default.conf /etc/nginx/conf.d/
COPY --chmod=755 99-stub.sh /docker-entrypoint.d/

