const db = require("../db/dbConfig");

const getAllTrips = async () => {
  try {
    const allTrips = await db.any("SELECT * FROM trips");
    return allTrips;
  } catch (error) {
    return error;
  }
};

module.exports = { getAllTrips };
