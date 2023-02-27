FROM ruby:3.2

WORKDIR /app

COPY ./src/Gemfile /app/Gemfile
COPY ./src/Gemfile.lock /app/Gemfile.lock

RUN bundle install
