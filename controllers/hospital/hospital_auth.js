const {hospital_user} = require("../../models/hospital/User");
const { validationResult, body } = require("express-validator");
const { Mongoose } = require("mongoose");

const registrationValidationRules = [
  body("hospital_name").trim().isLength({ min: 1 }).withMessage("Name is required"),

  body("email").isEmail().withMessage("Invalid email address"),

  body("password")
    .isLength({ min: 6 })
    .withMessage("Password must be at least 6 characters long"),
];

const register = async (req, res) => {
console.log(req.body);
  const errors = validationResult(req);
  console.log(errors);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }
  const { hospital_name, email, password, phoneNo, emailId, address } =
    req.body;
  console.log(req.body);

  const user = new hospital_user({
    hospital_name,
    email,
    password,
    phoneNo,
    emailId,
    address,
  });

  try {
    const savedUser = await user.save();
    res.status(200).json(savedUser);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

module.exports = { register, registrationValidationRules };
