FROM ruby:alpine

RUN apk add --update build-base postgresql-dev tzdata bash
RUN gem install rails -v '5.2.2'
RUN gem install bundler

WORKDIR /app
ADD Gemfile Gemfile.lock /app/
RUN bundle install
