FROM ruby:2.5-alpine

RUN mkdir /myproject
WORKDIR /myproject

# install packages
RUN apk add -U --no-cache bash git

# install imagemagick6-dev for rmagick
RUN apk add --no-cache imagemagick6-dev

# install bundler
RUN gem install bundler

# install rails
RUN apk add --no-cache libxml2-dev libxslt-dev libstdc++ tzdata mariadb-client-libs nodejs \
            ca-certificates build-base mariadb-dev ruby-dev sqlite sqlite-dev postgresql-dev
RUN gem install rails -v 5.2.0 --no-rdoc --no-ri

RUN bundle install

CMD bash start.sh
