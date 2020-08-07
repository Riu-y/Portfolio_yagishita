FROM nginx:1.12.2

RUN rm -f /etc/nginx/conf.d/*

# nginxの設定ファイルをコンテナへコピー
ADD nginx.conf /etc/nginx/conf.d/Portfolio_yagishita.conf

# buildした後に、nginxを起動
CMD /usr/sbin/nginx -g 'deamon off;' -c /etc/nginx/nginx.confs