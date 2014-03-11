FROM quay.io/aptible/ruby:ruby-2.0.0

ADD . /opt/test-app
WORKDIR /opt/test-app
RUN bundle install --without development test

ENV PORT 3000
EXPOSE 3000

CMD bundle exec rackup -p $PORT
