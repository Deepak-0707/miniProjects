FROM ubuntu:22.04
WORKDIR /app
RUN apt-get update && apt-get install -y bash procps coreutils
COPY script.sh .
RUN chmod +x script.sh
RUN sed -i 's/\r$//' script.sh
CMD ["bash","/app/script.sh"]
