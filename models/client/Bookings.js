const Mongoose = require("mongoose");
const mongoosePaginate = require("mongoose-paginate-v2");
const crypto = require("crypto");
const { randomUUID } = require("crypto");
const { type } = require("os");


const bookingSchema = new Mongoose.Schema(
    {
        user: {
            type: Mongoose.Schema.Types.ObjectId,
            ref: "User",
            required: true,
        }
        ,
        hospital: {
            type: Mongoose.Schema.Types.ObjectId,
            ref: "Hospital",
            required: true,
        },
        ambulance: {
            type: Mongoose.Schema.Types.ObjectId,
            ref: "Ambulance",
            required: true,
        },
        driver: {
            type: Mongoose.Schema.Types.ObjectId,
            ref: "Driver",
            required: true,
        },
        timeMoved: {
            type: Date,
        },
        timeArrived: {
            type: Date,
        },
        state: {
            type: String,
            enum: ["current", "previous"],
            required: true,
        },
        location: {
            longitude: String,
            latitude: String,
        },
        issueDetails: {
            type: String,
        },
    }
);

bookingSchema.plugin(mongoosePaginate);
const Booking = Mongoose.model("Booking", bookingSchema);
module.exports = { Booking };