const express = require("express");
const trips = express.Router();

const { getAllTrips } = require("../queries/trips");

trips.get("/", async (req, res) => {
  try {
    const allTrips = await getAllTrips();
    res.status(200).json(allTrips);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});
module.exports = trips;
