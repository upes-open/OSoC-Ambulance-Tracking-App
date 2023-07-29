const express = require('express');
const mongoose = require('mongoose');
require('dotenv').config(); 

const app = express();
const port = 3000; 

mongoose.connect(process.env.MONGODB_URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

const db = mongoose.connection;
db.on('error', console.error.bind(console, 'MongoDB connection error:'));
db.once('open', () => {
  console.log('Connected to MongoDB Atlas!');
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
