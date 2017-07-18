# jekyll-docker

## About

Jekyll image that includes imagemagick and other useful gems.

## Usage

Build:

    docker run --rm -it -v "$PWD:/srv/jekyll" sito/jekyll-docker build --incremental

Serve:

    docker run --rm -it -p 3000:3000 -v "$PWD:/srv/jekyll" sito/jekyll-docker serve --incremental