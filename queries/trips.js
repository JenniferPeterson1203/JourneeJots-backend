const db = require("../db/dbConfig");

const getAllTrips = async () => {
  try {
    const allTrips = await db.any(
      "SELECT trips.*,COUNT(entries.trip_id) AS entry_count FROM trips LEFT JOIN entries ON trips.id = entries.trip_id GROUP BY trips.id"
    );
    return allTrips;
  } catch (error) {
    return error;
  }
};

const getTripById = async (id) => {
  try {
    const oneTrip = await db.one("SELECT * FROM trips WHERE id=$1", id);
    return oneTrip;
  } catch (error) {
    return error;
  }
};

module.exports = { getAllTrips, getTripById };
