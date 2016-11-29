FROM alpine

RUN printenv
ENV MY_SECRET_TEXT "${MY_SECRET_TEXT}"
RUN echo "Text in my secret text" > /root/secret.txt 
RUN cat /root/secret.txt

RUN echo "hello world"
