const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send("Hello, világ! Igen, én is csak egy szerény Node.js app vagyok… de legalább működöm!");
});

app.listen(port, () => {
  console.log(`App running at http://localhost:${port}`);
});
