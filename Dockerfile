FROM nginx:1.12-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY website /website
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
