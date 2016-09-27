FROM alpine:latest
MAINTAINER Alvaro Reguly
LABEL Description="cntlm proxy on ports 3128 (http) and 1080 (socks)" Vendor="Alvaro Reguly" Version="1.0"

# Update
RUN apk upgrade --update \
 && apk add --no-cache --update ca-certificates \
 && rm -rf /var/cache/apk/* 

COPY cntlm.conf /etc/
COPY cntlm.x64.alpine /usr/sbin/cntlm

EXPOSE  3128 1080

ENTRYPOINT [ "/usr/sbin/cntlm" ]
CMD [ "-f" ]
