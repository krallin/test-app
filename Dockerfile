FROM quay.io/aptible/webapp-essential

ADD . /opt/test-app
WORKDIR /opt/test-app
RUN bundle install --without development test

ENV PORT 3000
EXPOSE 3000

CMD bundle exec rackup -p $PORT
