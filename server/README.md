# Ba Server

[![Server Build](https://github.com/asleepysheepy/Ba/workflows/Server%20Build/badge.svg)](https://github.com/asleepysheepy/Ba/actions)

## Running

### Requirements

* Ruby 2.6
* Dockker & Docker Compose
* Bundler 2.1

### Process

1. Clone the repo `$ git clone https://github.com/flutterflies/Ba.git ba && cd ba/server`
1. Install dependencies `$ bundle install`
1. Create a copy of `.env.sample` to `.env`. `$ cp .env.sample .env`
1. Add your bot token to `.env`
1. Start up the database `$ docker-compose up`
1. Setup the database `$ bundle exec rails db:setup`
1. Start the server `$ bundle exec rails server`