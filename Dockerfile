FROM nginx:alpine

# hapus default config
RUN rm /etc/nginx/conf.d/default.conf

# copy config custom
COPY nginx.conf /etc/nginx/conf.d/default.conf

# copy web files
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
