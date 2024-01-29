const {Booking} = require("../../models/client/Bookings");

const booking = async (req, res) => {
    const { user, hospital, ambulance, driver, timeMoved, timeArrived, state, clientLocation, issueDetails } = req.body;
    console.log(req.body);

    const bookings = new Booking({
        user,
        hospital,
        ambulance,
        driver,
        timeMoved,
        timeArrived,
        state,
        clientLocation,
        issueDetails,
    });

    try {
        const savedBooking = await bookings.save();
        res.status(200).json(savedBooking);
    } catch (error) {
        res.status(400).json({ message: error.message });
    }
}

const getBooking = async (req, res) => {
    try {
        const booking = await Booking.find();
        res.status(200).json(booking);
    } catch (error) {
        res.status(404).json({ message: error.message });
    }
}

module.exports = { booking, getBooking };