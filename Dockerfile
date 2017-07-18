FROM ruby:alpine

# Install some jekyll plugins
RUN apk add --update bash build-base libffi-dev ca-certificates rsync imagemagick-dev && \
    gem install --no-ri --no-rdoc \
        bundler \
        mercenary \
        html-proofer \
        listen \
        jekyll \
        jekyll-archives \
        jekyll-paginate-categories \
        rouge \
        pygments.rb \
        kramdown \
        rmagick \
        exifr:1.2.6 \
        jekyll-minimagick && \
    apk del build-base libffi-dev ruby-dev && \
    rm -rf /usr/lib/ruby/gems/*/cache/*.gem

VOLUME /srv/jekyll
EXPOSE 3000

WORKDIR /srv/jekyll

ENTRYPOINT ["jekyll"]