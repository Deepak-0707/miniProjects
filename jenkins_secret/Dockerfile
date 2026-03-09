FROM alpine
ARG API_KEY
WORKDIR /app
COPY . .
RUN chmod +x /app/script.sh
CMD ["/app/script.sh"]