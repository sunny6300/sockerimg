const express = require("express");
const router = express.Router();

router.all("/", async (req, res) => {
  res.send("Hi you are on home");
});

module.exports = router;
