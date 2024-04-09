const express = require("express");
const entries = express.Router();

const { getAllEntries } = require("../queries/entries");

entries.get("/", async (req, res) => {
  try {
    const allEntries = await getAllEntries();
    res.status(200).json(allEntries);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});
module.exports = entries;
