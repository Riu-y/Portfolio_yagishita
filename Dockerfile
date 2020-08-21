FROM ruby:2.5.7

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	# --no-install-recommends 不要なもののインストールをしない
	nodejs &&\
	apt-get install -y nginx \
	# アーカイブファイルの削除
	&& apt-get clean \
	&& rm -r /var/lib/apt/lists/*s




RUN mkdir /Portfolio_yagishita

# 作業ディレクトリ名をAPP_ROOTに割り当てて、以下$APP_ROOTで参照
ENV APP_ROOT /Portfolio_yagishita

WORKDIR /$APP_ROOT

# アプリのgemfile等をコピーしてきてbundleを実行
COPY Gemfile /$APP_ROOT/Gemfile
COPY Gemfile.lock /$APP_ROOT/Gemfile.lock
RUN gem install bundler
RUN bundle install

# ホストのアプリケーションディレクトリ内をすべてコンテナにコピー
COPY . $APP_ROOT

#一番最初に実行されるコマンドで、entrypoint.shをコピーしてきて実行、ファイル内でCMDを実行するように指定
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE  3000

CMD ["rails", "server", "-b", "0.0.0.0"]