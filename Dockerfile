FROM scratch

ENV MY_SECRET_TEXT "${MY_SECRET_TEXT}"
RUN echo "${MY_SECRET_TEXT}"

RUN echo "hello world"
