FROM jekyll/jekyll:builder
MAINTAINER Simone Grignola

# Install some jekyll plugins
RUN apk add --no-cache --virtual .build-deps \
        build-base \
        ruby-dev \
    && apk add --no-cache \
        python \
        imagemagick \
        imagemagick-dev \
    && gem install \
        jekyll \
        jekyll-archives \
        jekyll-paginate-categories \
        rouge \
        pygments.rb \
        kramdown \
        rmagick \
        exifr:1.2.6 \
        jekyll-minimagick \
# Clean
    && apk del -f .build-deps 

VOLUME /srv/jekyll
EXPOSE 3000

WORKDIR /srv/jekyll