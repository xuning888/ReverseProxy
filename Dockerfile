FROM ubuntu:20.04
COPY ./output/bin/proxy /app/proxy
WORKDIR /app
EXPOSE 8888
ENTRYPOINT ["/app/proxy"]
