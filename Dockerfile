FROM openjdk:21-alpine
WORKDIR /minecraft
RUN apk add --no-cache bash
COPY ./data /minecraft
COPY start.sh .
RUN chmod +x start.sh
EXPOSE 25565
CMD ["./start.sh"]
