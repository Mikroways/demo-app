FROM ruby:3.2.0-alpine3.17
WORKDIR /app
COPY Gemfile* app.rb /app/
RUN apk add -U build-base \
    && gem install bundler \
    && bundle install \
    && apk del build-base
CMD ["ruby", "app.rb"]

