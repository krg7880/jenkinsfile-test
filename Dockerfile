FROM alpine

RUN printenv

ARG MY_SECRET_TEXT

RUN echo "Kirk Secret : $MY_SECRET_TEXT" > /root/secret.txt 

RUN cat /root/secret.txt

RUN echo "hello world"

CMD tail -n 100 -f /root/secret.txt
