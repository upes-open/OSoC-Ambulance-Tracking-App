const express = require("express");
const router = express.Router();
const {
  register,
  registrationValidationRules,
} = require("../../controllers/hospital/hospital_auth");

router.post("/register", registrationValidationRules, register);

module.exports = router;
