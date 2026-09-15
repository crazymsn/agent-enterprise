FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY 企业级智能体系统.html /usr/share/nginx/html/index.html
COPY logo-transparent.png /usr/share/nginx/html/logo-transparent.png
COPY ["Agent 产品图", "/usr/share/nginx/html/Agent 产品图"]

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
