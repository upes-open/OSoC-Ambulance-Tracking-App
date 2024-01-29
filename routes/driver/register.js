const express = require('express');
const { driver_registration, getDriver } = require('../../controllers/driver/driver_auth');
const router = express.Router();


router.post('/register', driver_registration);
router.get('/get', getDriver);

module.exports = router;