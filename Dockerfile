FROM httpd:2.4
LABEL maintainer="s6keuly"
ARG port=80
USER root
RUN apt -y update
WORKDIR /usr/local/apache2/htdocs
RUN rm -rf *
COPY ./public-html/ /usr/local/apache2/htdocs/
ENTRYPOINT [ "httpd-foreground" ]
EXPOSE ${port}