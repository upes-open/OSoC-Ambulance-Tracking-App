const { Driver } = require("../../models/driver/Driver");
const mongoose = require("mongoose");

const driver_registration = async (req, res) => {
    const { driver_name, phoneNo, email, address, ambulance_id, ambulance_registration_no, password } = req.body;
    console.log(req.body);

    const driver = new Driver({
        driver_name,
        phoneNo,
        email,
        address,
        ambulance_id,
        ambulance_registration_no,
        password,
    });

    try {
        const savedDriver = await driver.save();
        res.status(200).json(savedDriver);
    } catch (error) {
        res.status(400).json({ message: error.message });
    }

}

const getDriver = async (req, res) => {
    try {
        const driver = await Driver.find();
        res.status(200).json(driver);
    } catch (error) {
        res.status(404).json({ message: error.message });
    }
}

module.exports = { driver_registration, getDriver };