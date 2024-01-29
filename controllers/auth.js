const {User} = require("../models/client/User");
const { validationResult, body } = require("express-validator");
const mongoose = require("mongoose");

const registrationValidationRules = [
  body("name").trim().isLength({ min: 1 }).withMessage("Name is required"),

  body("email").isEmail().withMessage("Invalid email address"),

  body("password")
    .isLength({ min: 6 })
    .withMessage("Password must be at least 6 characters long"),
];

const register = async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }
  const { name, email, password, sex, age, phoneNo, emailId, location } =
    req.body;
  console.log(req.body);

  const user = new User({
    name,
    email,
    password,
    sex,
    age,
    phoneNo,
    emailId,
    location,
  });

  try {
    const savedUser = await user.save();
    res.status(200).json(savedUser);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

module.exports = { register, registrationValidationRules};
