# image
FROM ubuntu/nginx

HEALTHCHECK --interval=5m --timeout=3s \
    CMD curl -f http://localhost/ || exit 1

COPY ./nginx/nginx.conf /etc/nginx/ 
COPY ./main.c /
COPY ./run.sh /

RUN  apt-get update &&\
    apt-get install -y gcc spawn-fcgi libfcgi-dev &&\
    rm -rf /var/lib/apt/lists/* &&\
    gcc -Werror -Wextra -Wall /main.c -o /main -l fcgi  &&\
    chmod +x /run.sh &&\
    groupadd docker &&\
    chmod g-s \
    /usr/sbin/pam_extrausers_chkpwd \
    /usr/bin/wall \
    /sbin/unix_chkpwd \
    /usr/bin/expiry \
    /usr/bin/chage &&\
    chmod u-s \
    /bin/umount \
    /usr/bin/passwd \
    /bin/mount \
    /bin/su \
    /usr/bin/newgrp \
    /usr/bin/gpasswd \
    /usr/bin/chsh \
    /usr/bin/chfn



ENTRYPOINT [ "/run.sh" ]