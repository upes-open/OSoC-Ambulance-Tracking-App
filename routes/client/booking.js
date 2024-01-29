const express = require("express");
const { booking } = require("../../controllers/client/client_booking");
const router = express.Router();

router.post("/booking", booking);
module.exports = router;