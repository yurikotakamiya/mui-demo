FROM ruby:3.1.6

# Install Node.js
RUN apt-get update -qq && apt-get install -y nodejs

# Set the working directory
WORKDIR /app
# Set environment variables for building the image
ENV RAILS_ENV=production \
    APPLICATION_TYPE=backend \
    RAILS_LOG_TO_STDOUT=true

# Set the working directory
WORKDIR /app

# Install packages needed to build gems
RUN apt-get update && apt-get install -y libsqlite3-dev sqlite3 zlib1g-dev libpq-dev build-essential postgresql-client

COPY vendor/ ./vendor
COPY Gemfile* ./
COPY docker-entrypoint.sh ./

RUN bundle install -j4
COPY . .

ENTRYPOINT ["/app/docker-entrypoint.sh"]
EXPOSE 3000