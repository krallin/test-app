FROM quay.io/aptible/webapp-essential

RUN apt-install nginx
ADD templates/nginx.conf /etc/nginx/nginx.conf

ADD . /opt/test-app
WORKDIR /opt/test-app
RUN bundle install --without development test

EXPOSE 80
EXPOSE 9300
EXPOSE 9400
EXPOSE 9500

CMD nginx && bundle exec rackup -p 3000 -o 0.0.0.0
