FROM alpine

RUN printenv
ARG MY_SECRET_TEXT
RUN echo "$MY_SECRET_TEXT" > /root/secret.txt 
RUN cat /root/secret.txt

RUN echo "hello world"
