FROM ruby:2.7.6-alpine

RUN apk update && \
    apk add --no-cache build-base nodejs yarn tzdata 

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN bundle exec rake assets:precompile

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

