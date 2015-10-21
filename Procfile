web:    RAILS_ENV=production bundle exec rails server -p ${DEV_PORT:-4000} -e ${RACK_ENV:-development}
worker: bundle exec sidekiq -C config/sidekiq.yml
