const fs = require('fs');
const Discord = require('discord.js');
const handleMention = require('./events/mention');
const handleMessage = require('./events/message');

const client = new Discord.Client();

function loadCommands() {
  client.commands = new Discord.Collection();
  const commandFiles = fs.readdirSync('./src/commands').filter(file => file.endsWith('.js'));

  for (const file of commandFiles) {
    const command = require(`./commands/${file}`);
    client.commands.set(command.name, command);
  }
}

function handleCommand(message) {
  const command = message.content.slice(4).split(/ +/).shift().toLowerCase();
  if (client.commands.has(command)) {
    try {
      client.commands.get(command).execute(message);
    }
    catch (error) {
      message.reply('That command doesn\'t exist! Use `?ba help` for a list of commands');
    }
  }
}

client.once('ready', () => {
  client.user.setActivity('say ?ba help');
});

client.on('message', (message) => {
  if(message.content.startsWith('?ba ')) {
    handleCommand(message);
  }
  else if (message.content.includes(`<@${client.user.id}>`)) {
    handleMention(message);
  }
  else {
    handleMessage(message);
  }
});

loadCommands();
client.login(process.env.TOKEN);