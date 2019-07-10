FROM ruby:2.6.3-alpine
RUN apk add --no-cache --update build-base nodejs postgresql-dev bash tzdata imagemagick nano
RUN mkdir /build_it_api
WORKDIR /build_it_api
COPY Gemfile /build_it_api/Gemfile
COPY Gemfile.lock /build_it_api/Gemfile.lock
RUN bundle install
COPY . /build_it_api

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
