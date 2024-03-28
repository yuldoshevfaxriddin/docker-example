# bu izoh
# RUN apt-get update && apt-get install -y nginx shunday ishlatsa ham bo'ladi
# CMD nginx -g 'daemon off;' => CMD ["nginx","-g","deamon off;"]

FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y nginx

COPY ./index.html /var/www/html

CMD nginx -g 'daemon off;'