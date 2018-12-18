FROM ruby:2.5.3-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
# Set an environment variable where the rack app is installed to inside of Docker image
ENV RACK_ROOT /var/www/sidekiq_dashboard
RUN mkdir -p $RACK_ROOT
# Set working directory
WORKDIR $RACK_ROOT
# Setting env up
ARG REDIS_URL=redis://localhost:6379
ENV REDIS_URL="${REDIS_URL}"
ARG USERNAME=admin
ENV USERNAME="${USERNAME}"
ARG PASSWORD=chang3MeP1ea5e
ENV PASSWORD="${PASSWORD}"
ENV RACK_ENV='production'

# Adding project files
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY config.ru .

CMD ["bundle", "exec", "rackup", "config.ru", "-p", "8080"]
EXPOSE 8080
