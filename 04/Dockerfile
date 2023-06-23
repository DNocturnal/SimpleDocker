# image
FROM ubuntu/nginx


COPY ./nginx/nginx.conf /etc/nginx/ 
COPY ./main.c /
COPY ./run.sh /

RUN  apt-get update &&\
    apt-get install -y gcc spawn-fcgi libfcgi-dev &&\
    gcc -Werror -Wextra -Wall /main.c -o /main -l fcgi  &&\
    chmod +x /run.sh

ENTRYPOINT [ "/run.sh" ]