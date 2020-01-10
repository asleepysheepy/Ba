# Ba Discord Bot

[![GitHub license](https://img.shields.io/github/license/flutterflies/Ba.svg?style=flat-square)](https://github.com/flutterflies/Ba/blob/master/LICENSE)
[![GitHub contributors](https://img.shields.io/github/contributors/flutterflies/Ba.svg?style=flat-square)](https://GitHub.com/flutterflies/Ba/graphs/contributors/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![Add to server](https://img.shields.io/badge/Add%20to%20your-server-7289DA.svg?style=flat-square)](https://discordapp.com/oauth2/authorize?&client_id=432729863820935172&scope=bot&permissions=2112)
[![Join Support Server](https://img.shields.io/badge/Join%20the%20support-Discord-7289DA.svg?style=flat-square)](https://discord.gg/GMSFMpF)
[![Bot Build Status](https://github.com/flutterflies/ba/workflows/Bot%20Build/badge.svg)](https://github.com/flutterflies/ba/actions)
[![Web Build Status](https://github.com/flutterflies/ba/workflows/Web%20Build/badge.svg)](https://github.com/flutterflies/ba/actions)

## Add emoji reactions to discord messages

Ba adds reactions to messages posted in Discord channels, based upon the text within them, with matching regexes.

## Running Ba

### Requirements

* Git
* Docker
* docker-compose
* A Discord bot token
* Ruby 2.6
* Bundler

### Installing

1) Clone this repository and cd into the directory `$ git clone https://github.com/flutterflies/Ba.git ba && cd ba`
1) Start docker `$ docker-compose up -d`
1) Change into the bot directory `$ cd bot`
1) Start your own Ba using `$ TOKEN="your token here" bundle exec rake`
1) Use `?ba help` within Discord to see their available commands!

**You can stop Ba with ctrl+C!**

## Running Tests

Ba's tests can be run with: `$ cd bot && bundle exec rspec`

## Ba's reactions

### Base reactions

##### `/\barf+\b/`

![Arf](https://user-images.githubusercontent.com/12132647/72185891-e2808680-33c1-11ea-93ae-5d852bdfd346.png)

##### `/\baw(u+|oo+)\b/`

![Awoo](https://user-images.githubusercontent.com/12132647/72185953-0c39ad80-33c2-11ea-859f-8c38fe06f351.png)

##### `/\bba+\b/`

![Ba](https://user-images.githubusercontent.com/12132647/72185990-2c696c80-33c2-11ea-986a-337f4521711b.png)

##### `/\bbe+a+ry?\b/`

![Bear](https://user-images.githubusercontent.com/12132647/72186128-810ce780-33c2-11ea-8eac-aa29fabc6aa1.png)

##### `/\bca+w+\b/`

![Caw](https://user-images.githubusercontent.com/12132647/72186191-a863b480-33c2-11ea-98f2-4c266709c220.png)

##### `/\bmoo+\b/`

![Cow](https://user-images.githubusercontent.com/12132647/72186325-02fd1080-33c3-11ea-8899-6ca7defc8aa9.png)

##### `/\bri+bbi+t\b|\bcro+a+k\b/`

![Frog](https://user-images.githubusercontent.com/12132647/72186413-3475dc00-33c3-11ea-90d7-cfc90faa4af4.png)

##### `/\bho+nk\b/`

![Honk](https://user-images.githubusercontent.com/12132647/72186996-84a16e00-33c4-11ea-9523-ab30814279f9.png)

##### `/\b((ni){2,}|g'night|good night)\b/`

![Moon](https://user-images.githubusercontent.com/12132647/72187035-9b47c500-33c4-11ea-86f5-aad3058e7a73.png)

##### `/\b(nya+[hn]?|me+ow)\b/`

![Nya](https://user-images.githubusercontent.com/12132647/72187125-d8ac5280-33c4-11ea-8635-6da722ce761c.png)

##### `/\bsque+a+k\b/`

![Rat](https://user-images.githubusercontent.com/12132647/72187152-e8c43200-33c4-11ea-986e-611ad4049cfa.png)

##### `/\bchoo+\s*choo+\b/`

![Train](https://user-images.githubusercontent.com/12132647/72187202-042f3d00-33c5-11ea-9ef4-186726df5105.png)

##### `/\bwoo+loo+\b/`

![Wooloo](https://user-images.githubusercontent.com/12132647/72187224-17daa380-33c5-11ea-8b39-3b591f7c3774.png)

### Seasonal Reactions

These reactions are only available for a limited time each year, get 'em while they're hot! ☕️

#### Feburary

##### `/\blo+ve+\b/`

![Love](https://user-images.githubusercontent.com/12132647/72187270-4193ca80-33c5-11ea-9e92-dd59aa76c79a.png)

##### `/\bhe+a+rt\b/`

![Heart](https://user-images.githubusercontent.com/12132647/72187315-5a03e500-33c5-11ea-8a4d-ca62ffe5ebd9.png)

##### `/\bki+ss+\b/`

![Kiss](https://user-images.githubusercontent.com/12132647/72187358-6f790f00-33c5-11ea-92bc-b260f3d8899d.png)

#### October

##### `/\bdoo+t\b/`

![Doot](https://user-images.githubusercontent.com/12132647/72187400-89b2ed00-33c5-11ea-9ee2-55fd038491e3.png)

##### `/\b(gho+st|boo+)\b/`

![Ghost](https://user-images.githubusercontent.com/12132647/72187423-9df6ea00-33c5-11ea-87bc-1b87890c62ee.png)

##### `/\bpumpkins?\b/`

![Pumpkin](https://user-images.githubusercontent.com/12132647/72187455-b5ce6e00-33c5-11ea-9d8a-8278ed06b76f.png)

##### `/\bri+p\b/`

![Rip](https://user-images.githubusercontent.com/12132647/72187481-c7b01100-33c5-11ea-99c5-3e8ec0a5bcec.png)

##### `/\b(spoo+ky+|sca+r+y+|skele(ton)?s?)\b/`

![Skeleton](https://user-images.githubusercontent.com/12132647/72187513-dd253b00-33c5-11ea-9c47-35619e5aaa23.png)

_[List May Be Incomplete As More Are Added, See `?ba usage_stats`.]_
