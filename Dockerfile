FROM alpine

ENV MY_SECRET_TEXT "${MY_SECRET_TEXT}"
RUN echo "${MY_SECRET_TEXT}" > /root/secret.txt && cat /root/secret.txt

RUN echo "hello world"
