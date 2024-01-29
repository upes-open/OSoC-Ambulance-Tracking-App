// ====================================
//             Requirements
// ====================================
const express = require("express");
const dotenv = require("dotenv");
const mongoose = require("mongoose");

// Database
// let { booking } = require("./database/bookings/bookings.js");
// import {router as registerRoute} from "./routes/auth.js";
const registerRoute = require("./routes/client/register.js");
const bookingRoute = require("./routes/client/booking.js");
const registerRoute_hospital = require("./routes/hospital/register_hospital.js")
const registerRoute_driver = require("./routes/driver/register.js")
// ====================================
//             Configuration
// ====================================
const app = express();
dotenv.config({ path: "./config/config.js" });
mongoose
	.connect(process.env.MONGO_URI)
	.then(() => console.log("Connected To Mongo"));

// ====================================
//         Middleware & Routes
// ====================================
// app.get(["/bookings/:state", "/bookings"], (req, res) => {
// 	res.send("");
// });
app.use(express.json());

app.use('/api/client', registerRoute);
app.use("/api/client", bookingRoute);
app.use("/api/driver", registerRoute_driver);
app.use("/api/hospital", registerRoute_hospital);


// ====================================
//          Listening on ports
// ====================================
app.listen(process.env.PORT, () => {
	console.log(`Server is running on http://localhost:${process.env.PORT}`);
});
