const express = require("express");
const bodyParser = require("body-parser");

const PORT = process.env.PORT || 8000;
const router = express.Router();
const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use("/api/home", require("./routes/home"));

app.listen(PORT, () => console.log("Node app listening on PORT", PORT));
