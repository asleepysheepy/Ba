const reactions = require('../utils/reactions');

module.exports = (message) => {
  for (const react of reactions().values()) {
    if (message.content.toLowerCase().match(react.regex)) {
      message.react(react.emoji);
    }
  }
};