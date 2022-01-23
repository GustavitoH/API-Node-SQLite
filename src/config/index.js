require('dotenv').config();

const config = {
  dev: process.env.NODE_ENV !== 'production',
  localport: process.env.LOCALPORT || 3001,
};

module.exports = { config };
