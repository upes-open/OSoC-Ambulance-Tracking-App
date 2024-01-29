const express = require("express");
const router = express.Router();
const {
  register,
  registrationValidationRules,
  
} = require("../../controllers/auth.js")

router.post("/register",registrationValidationRules, register);
module.exports = router; // Export the correct router instance

