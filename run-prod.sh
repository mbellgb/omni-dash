#!/bin/sh -e
export POSTGRES_PASSWORD=$POSTGRES_PASSWORD
test $POSTGRES_PASSWORD
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rails s -p 3000 -b '0.0.0.0'
