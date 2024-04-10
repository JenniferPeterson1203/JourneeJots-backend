const express = require("express");
const entries = express.Router();

const {
  getAllEntries,
  getEntryById,
  createEntry,
} = require("../queries/entries");

// route to get ALL journal entries
entries.get("/", async (req, res) => {
  try {
    const allEntries = await getAllEntries();
    res.status(200).json(allEntries);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

// route to get ONE specific journal entry
entries.get("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const entry = await getEntryById(id);
    if (entry) {
      res.status(200).json(entry);
    } else {
      res.status(400).json({ error: "Entry not found with this ID" });
    }
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

// route to CREATE a journal entry
entries.post("/", async (req, res) => {
  try {
    const newEntry = await createEntry(req.body);
    res.status(200).json(newEntry);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

module.exports = entries;
