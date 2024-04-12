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

const createTrip = async (trip) => {
  console.log("trip", trip);
  const {
    user_id,
    destination,
    first_time,
    start_date,
    end_date,
    budget,
    total_cost,
    climate,
  } = trip;

  try {
    const newTrip = await db.one(
      "INSERT INTO trips (user_id,destination,first_time,start_date,end_date,budget,total_cost,climate) VALUES($1, $2, $3, $4,$5, $6, $7, $8) RETURNING *",
      [
        user_id,
        destination,
        first_time,
        start_date,
        end_date,
        budget,
        total_cost,
        climate,
      ]
    );
    console.log("Q new trip", newTrip);
    return newTrip;
  } catch (error) {
    return error;
  }
};

const updateTripById = async (id, trip) => {
  const {
    user_id,
    destination,
    first_time,
    start_date,
    end_date,
    budget,
    total_cost,
    climate,
  } = trip;

  try {
    const updatedTrip = await db.one(
      "UPDATE trips SET user_id = $1,destination = $2,first_time = $3,start_date = $4,end_date = $5,budget = $6,total_cost = $7,climate = $8 WHERE id=$9 RETURNING *",
      [
        user_id,
        destination,
        first_time,
        start_date,
        end_date,
        budget,
        total_cost,
        climate,
        id,
      ]
    );
    return updatedTrip;
  } catch (error) {
    return error;
  }
};
const deleteTripById = async (id) => {
  try {
    const deletedTrip = await db.one(
      "DELETE FROM trips WHERE id = $1 RETURNING *",
      id
    );
    return deletedTrip;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllTrips,
  getTripById,
  createTrip,
  deleteTripById,
  updateTripById,
  deleteTripById,
};
