const Mongoose = require("mongoose");
const mongoosePaginate = require("mongoose-paginate-v2");
const crypto = require("crypto");
const { randomUUID } = require("crypto");
const sessionSchema = new Mongoose.Schema(
  {
    lastLogin: {
      type: Date,
      default: Date.now(),
    },
    ipAddress: {
      type: Number,
      required: true,
    },
  },
  { timestamps: true }
);

const userSchema = new Mongoose.Schema(
  {
    hospital_name: String,
    phoneNo: {
      type: Number,
      required: true,
      unique: true,
    },
    email: {
      type: String,
      required: true,
      unique: true,
    },
    address: String,
    activeAccount: {
      type: String,
      enum: ["disabled", "suspened", "active"],
      default: "active",
    },

    encpy_password: {
      type: String,
      required: true,
    },
    salt: String,
    resetPasswordToken: String,
    resetPasswordExpires: Date,
    sessions: [sessionSchema],
  },
  { timestamps: true }
);
userSchema.plugin(mongoosePaginate);

userSchema
  .virtual("password")
  .set(function (password) {
    this._password = password;
    this.salt = randomUUID();
    this.encpy_password = this.securePassword(password);
  })
  .get(function () {
    return this._password;
  });

userSchema.methods = {
  authenticate: function (plainpassword) {
    return this.securePassword(plainpassword) === this.encpy_password;
  },

  securePassword: function (plainpassword) {
    if (!plainpassword) return "";
    try {
      return crypto
        .createHmac("sha256", this.salt)
        .update(plainpassword)
        .digest("hex");
    } catch (err) {
      return "";
    }
  },
};

const hospital_user = Mongoose.model("hospital_user", userSchema);

const userResource = {
  resource: hospital_user,
  options: {
    properties: {
      encpy_password: {
        isVisible: false,
      },
      salt: {
        isVisible: false,
      },
      resetPasswordToken: {
        isVisible: false,
      },
      resetPasswordExpires: {
        isVisible: false,
      },
      sessions: {
        isVisible: false,
      },
    },
  },
};
// module.exports = Mongoose.model("User", userSchema);
module.exports = { hospital_user, userResource };
