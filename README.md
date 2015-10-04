Podcast Central
============
url: https://alpha-podcast-central.herokuapp.com
A social network for meeting new people that love podcasts just like you do.

Installation:

git clone https://github.com/drodrigo/podcast-central.git

cd podcast-central

bundle install

bundle exec rake db:migrate

bundle exec rake db:test:prepare

bundle exec rspec spec/
