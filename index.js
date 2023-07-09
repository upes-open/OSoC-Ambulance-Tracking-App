// ====================================
//             Requirements
// ====================================
const express = require("express");
const dotenv = require("dotenv");
const mongoose = require("mongoose");

// Database
let { booking } = require("./database/bookings/bookings.js");

// ====================================
//             Configuration
// ====================================
const app = express();
dotenv.config({ path: "./config/config.env" });
mongoose
	.connect(process.env.MONGO_URI)
	.then(() => console.log("Connected To Mongo"));

// ====================================
//         Middleware & Routes
// ====================================
app.get(["/bookings/:state", "/bookings"], (req, res) => {
	res.send("");
});

// ====================================
//          Listening on ports
// ====================================
app.listen(process.env.PORT, () => {
	console.log(`Server is running on http://localhost:${process.env.PORT}`);
});
