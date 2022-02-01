FROM debian:buster
EXPOSE 443
COPY ./tools/install.sh .
RUN bash install.sh
COPY ./conf/default /etc/nginx/sites-available/
CMD ["nginx", "-g", "daemon off;"]
