# Sourced from rails:onbuild
FROM ruby:2.2

RUN apt-get update -y
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ["Gemfile","/usr/src/app/" ]
COPY ["Gemfile.lock","/usr/src/app/" ]
RUN bundle install

COPY . /usr/src/app
EXPOSE 3000
CMD ["/bin/bash", "/usr/local/bundle/bin/rails server"]
