FROM nginx:alpine

#removing the default nginx configuration and content
RUN rm -rf /usr/share/nginx/html/*

#copy the static files into the nginx container
COPY . /usr/share/nginx/html

#Exposing 80 to the server
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]