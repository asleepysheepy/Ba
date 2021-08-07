<div align="center">
  <img src="https://cdn.discordapp.com/avatars/432729863820935172/f29e3fa18a3521d69a792f9f8124cfec.png?size=1024" height="250" />
  <h1>Ba Discord Bot</h1>

  <a href="https://github.com/asleepysheepy/Ba/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/asleepysheepy/Ba.svg?style=flat-square" alt="Github License" />
  </a>
  <a href="https://discordapp.com/oauth2/authorize?&client_id=432729863820935172&scope=bot&permissions=329792">
    <img src="https://img.shields.io/badge/Add%20to%20your-server-7289DA.svg?style=flat-square" alt="Add to your server" />
  </a>
   <a href="https://discord.gg/GMSFMpF">
    <img src="https://img.shields.io/badge/Join%20the%20development-Discord-7289DA.svg?style=flat-square" alt="Join Development Server" />
  </a>

  <br />
  <br />

  <p>Ba adds reactions to messages posted in Discord channels, based upon the text within them, with matching regexes.</p>

  <hr />
</div>

## Table of Contents

* [Adding Ba to your Discord server](#adding-Ba-to-your-discord-server)
  * [Inviting the public Ba account](#inviting-the-public-ba-account)
  * [Setting up your own instance of Ba](#setting-up-your-own-instance-of-Ba)
    * [Requirements](#requirements)
    * [Setting up a Discord bot instance](#setting-up-a-discord-bot-instance)
    * [Inviting your instance of Ba to your server](#inviting-your-instance-of-Ba-to-your-server)
* [Using Ba](#using-Ba)
  * [Ba's Reactions](#bas-reactions)
* [Dependencies and frameworks](#Dependencies-and-frameworks)
* [Contributing to Ba](#contributing-to-Ba)
  * [Bug reports](#bug-reports)
  * [Developing Ba](#developing-Ba)
    * [Requirements](#requirements)
    * [Running Ba for local development](#running-Ba-for-local-development)
    * [`package.json` scripts](#package.json-scripts)
* [License](#license)

## Adding Ba to your Discord server

If you want to run Ba on your server, you can either invite the public Ba account or set up your own Discord bot with Ba's code.

### Inviting the public Ba account

If you want to invite the public Ba account to your server, go [here](https://discordapp.com/oauth2/authorize?&client_id=432729863820935172&scope=bot&permissions=2112).

### Setting up your own instance of Ba

#### Requirements

* [Node.js](https://nodejs.org/en/), v16.6.0 or higher
* [Yarn Package Manager](https://yarnpkg.com/)
* [Docker](https://www.docker.com/)/[Docker Compose](https://docs.docker.com/compose/)

#### Setting up a Discord bot instance

* Sign in to Discord
* Go to the [Discord Dev Portal](https://discordapp.com/developers/), and click on 'My Apps'
* Click on 'New App' to create a Discord application
* Go to the Bot tab, and click the Add Bot button to create a bot user
* Copy the token under Bot/Token - you will need this in the next step

#### Installation Instructions

* TODO: Write this

#### Inviting your instance of Ba to your server

Click the 'Generate OAuth2 URL' button in the Discord Developer pane to generate your invite URL.  Using the invite URL, you can invite your instance of Ba to any Discord server on which you have administrator permissions.

## Using Ba

### Ba's reactions

You can use the `/emotes` command to see a list of Ba's reactions or a list of reactions can be found [here](https://github.com/asleepysheepy/Ba/wiki/Reactions).

## Dependencies and frameworks

* [Discord.js](https://discord.js.org) - Discord API for Node.js
* [ESLint](https://eslint.org/) - Linting
* [PostgreSQL](https://www.postgresql.org/) - Persistent storage
* [TypeORM](https://typeorm.io/#/) - Database Interaction
* [TypeORM Seeding](https://github.com/w3tecch/typeorm-seeding) - Seeding database data
* [Winston](https://github.com/winstonjs/winston) - Log management

## Contributing to Ba

We welcome all contributors to Ba.  Your pull requests will be reviewed by the authors prior to merging. Please document your code, and play nicely with other contributors.

### Bug reports

Please report bugs by opening an [issue](https://github.com/asleepysheepy/Ba/issues) on GitHub.

### Developing Ba

#### Requirements
* [Docker](https://www.docker.com/)/[Docker Compose](https://docs.docker.com/compose/)
* [Node.js](https://nodejs.org/en/) v16.6.0 or higher
* [Yarn](https://yarnpkg.com/)

#### Running Ba for local development

<ol>
  <li>
    clone the repo and move into the directory.
    <br>
    <pre>$ git clone https://github.com/asleepysheepy/Ba.git ba && cd ba</pre>
  </li>
  <li>
    Install dependencies with yarn.
    <br>
    <pre>$ yarn install</pre>
  </li>
  <li>
    Create <code>.env</code> file.
    <br>
    <pre>$ cp .env.sample .env</pre>
  </li>
  <li>
    Setup your evironment variables in the <code>.env</code> file.
  </li>
  <li>
    Start the docker processes.
    <br>
    <pre>$ docker-compose up -d</pre>
  </li>
  <li>
    Run the mirgations to set up the database.
    <br>
    <pre>$ yarn typeorm migration:run</pre>
  </li>
  <li>
    Run the database seeder to create some emotes.
    <br>
    <pre>$ yarn seed seed</pre>
  </li>
  <li>
    Start Ba.
    <br>
    <pre>$ yarn start</pre>
  </li>
</ol>

#### package.json scripts

* `yarn build` - Compiles Ba's typeScript code into plain JavaScript
* `yarn lint:all` - Run eslint over Ba's code
* `yarn lint:fix` - Run eslint over Ba's code, fixing mistakes
* `yarn seed` - Access the typeorm-seeding CLI
* `yarn start` - Compile Ba and start up the bot process
* `yarn typeorm` - Access Typeorm's CLI

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
