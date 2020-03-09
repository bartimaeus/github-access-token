FROM ruby:2.6

EXPOSE 4567

WORKDIR /api

COPY Gemfile Gemfile.lock* /api/

RUN bundle install

COPY . .

CMD ["bundle", "exec", "ruby", "server.rb"]
