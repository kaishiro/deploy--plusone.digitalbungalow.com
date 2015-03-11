#!/bin/sh

rm -rf tmp/www
git clone https://github.com/kaishiro/site--plusone.digitalbungalow.com tmp/www
cd tmp/www
bundle install
bundle exec middleman build
bundle exec middleman s3_sync
