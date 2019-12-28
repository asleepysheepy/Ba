# Ba Discord Bot

[![GitHub license](https://img.shields.io/github/license/flutterflies/Ba.svg?style=flat-square)](https://github.com/flutterflies/Ba/blob/master/LICENSE)
[![GitHub contributors](https://img.shields.io/github/contributors/flutterflies/Ba.svg?style=flat-square)](https://GitHub.com/flutterflies/Ba/graphs/contributors/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![Add to server](https://img.shields.io/badge/Add%20to%20your-server-7289DA.svg?style=flat-square)](https://discordapp.com/oauth2/authorize?&client_id=432729863820935172&scope=bot&permissions=2112)
[![Join Support Server](https://img.shields.io/badge/Join%20the%20support-Discord-7289DA.svg?style=flat-square)](https://discord.gg/GMSFMpF)
[![Bot Build Status](https://github.com/flutterflies/ba/workflows/Bot%20Build/badge.svg)](https://github.com/flutterflies/ba/actions)
[![Web Build Status](https://github.com/flutterflies/ba/workflows/Web%20Build/badge.svg)](https://github.com/flutterflies/ba/actions)

## Add emoji reactions to discord messages

Ba adds reactions to message posted in Discord channels based on regex string matching

## Running Ba

### Requirements

* Git
* Docker
* docker-compose
* Discord bot token
* Ruby 2.6
* Bundler

### Installing

1) Clone this repository and cd into the directory `$ git clone https://github.com/flutterflies/Ba.git ba && cd ba`
1) Start docker `$ docker-compose up -d`
1) Change into the bot directory `$cd bot`
1) Start the bot `$ TOKEN="your token here" bundle exec rake`

**You can stop ba with ctrl+C

## Running Tests

Ba's tests can be run with: `$ cd bot && bundle exec rspec`

