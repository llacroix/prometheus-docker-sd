from ubuntu:bionic

run apt-get update \
    && apt-get install -y \
      python3 \
      python3-pip \
    && pip3 install \
      flask \
      flask-restful \
      docker

copy ./app /app
RUN chmod +x /app/server

CMD ["/app/server"]
