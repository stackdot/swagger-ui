FROM nginx:latest

# Copy over the App
RUN mkdir /ui
COPY dist /ui/build

# SETUP NGINX
COPY ./docker-files/default /etc/nginx/sites-enabled/default
COPY ./docker-files/nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx" ]

