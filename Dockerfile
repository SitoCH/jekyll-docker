FROM jekyll/jekyll:builder
MAINTAINER Simone Grignola

# Install some jekyll plugins
RUN apk add --no-cache --virtual .build-deps \
        build-base \
        ruby-dev \
    && apk add --no-cache \
        python \
        imagemagick \
    && gem install \
        jekyll-archives \
        jekyll-paginate-categories \
        rouge \
        pygments.rb \
# Clean
    && apk del -f .build-deps 

VOLUME /srv/jekyll
EXPOSE 4000

WORKDIR /srv/jekyll