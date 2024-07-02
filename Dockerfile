FROM nginx:1.10.1-alpine
Add index.html /usr/share/nginx/html/index.html
COPY start.sh /start.sh
#COPY runner.sh /runner.sh
RUN chmod +x /start.sh
#RUN chmod +x /runner.sh
#ENTRYPOINT ["/runner.sh"]
ENTRYPOINT ["/start.sh"]


#RUN apt-get update
#RUN apt-get install iputils-ping -y
#RUN apt-get install -y vim wget dialog net-tools
#RUN apt install -y nginx
#RUN rm -v /etc/nginx/nginx.conf
#ADD nginx.conf /etc/nginx/
#RUN mkdir /etc/nginx/logs
#RUN mkdir -p /www/data/
#ADD index.html /www/data/
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf
#ADD runner.sh /start.sh
#RUN chmod +x /start.sh
#EXPOSE 80
#ENTRYPOINT ["/start.sh"]
#CMD ["nginx",]
