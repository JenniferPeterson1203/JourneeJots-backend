const express = require("express");
const trips = express.Router();

const {
  getAllTrips,
  getTripById,
  createTrip,
  updateTripById,
} = require("../queries/trips");

trips.get("/", async (req, res) => {
  try {
    const allTrips = await getAllTrips();
    res.status(200).json(allTrips);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

trips.get("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const trips = await getTripById(id);
    if (trips) {
      res.status(200).json({ ...trips });
    } else {
      res.status(404).json({ error: "Trip with this ID was not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

trips.post("/", async (req, res) => {
  try {
    const newTrip = await createTrip(req.body);
    res.status(201).json(newTrip);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

trips.put("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const updatedTrip = await updateTripById(id, req.body);
    res.status(200).json(updatedTrip);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

module.exports = trips;
