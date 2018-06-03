# Ba Discord Bot

[![GitHub license](https://img.shields.io/github/license/flutterflies/Ba.svg?style=flat-square)](https://github.com/flutterflies/Ba/blob/master/LICENSE)
[![GitHub contributors](https://img.shields.io/github/contributors/flutterflies/Ba.svg?style=flat-square)](https://GitHub.com/flutterflies/Ba/graphs/contributors/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![Add to server](https://img.shields.io/badge/Add%20to%20your-server-7289DA.svg?style=flat-square)](https://discordapp.com/oauth2/authorize?&client_id=432729863820935172&scope=bot&permissions=2112)
[![Join Support Server](https://img.shields.io/badge/Join%20the%20support-Discord-7289DA.svg?style=flat-square)](https://discord.gg/GMSFMpF)
[![Build Status](https://travis-ci.org/flutterflies/Ba.svg?branch=master)](https://travis-ci.org/flutterflies/Ba)

## Add emoji reactions to discord messages

Ba adds reactations to message posted in Discord channels based on regex string matching

## Running Ba

### Requirements

* Git
* Docker
* Discord bot token

### Installing

1) Clone this repository and cd into the directory `git clone https://github.com/flutterflies/Ba.git ba && cd ba`
1) Build the Docker image `docker build -t ba_bot .`
1) Run the Docker image `docker run -it -e TOKEN=YOUR_TOKEN_HERE ba`

**You can stop ba with ctrl+C

## Running Tests

After building the docker image you can run tests with `docker run ba rspec`

