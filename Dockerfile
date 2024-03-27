FROM nginx:alpine
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./ga-lawyers-website /usr/share/nginx/html
COPY ./ga-lawyers-website /etc/nginx/html/
VOLUME /var/log/nginx/log
CMD ["nginx", "-g", "daemon off;"]

