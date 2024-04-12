const express = require("express");
const entries = express.Router();

const {
  getAllEntries,
  getEntriesByTripId,
  getOneEntryById,
  createEntry,
  deleteEntryById,
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

// route to get all entries based on trip id
entries.get("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const entry = await getEntriesByTripId(id);
    if (entry) {
      res.status(200).json(entry);
    } else {
      res.status(400).json({ error: "Entries not found with this ID" });
    }
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

// route to get ONE specific journal entry based on entry id
entries.get("/single/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const entry = await getOneEntryById(id);
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
    console.log("body:", req.body);
    const newEntry = await createEntry(req.body);
    console.log("new entry", newEntry);
    res.status(200).json(newEntry);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

// route to delete a journal entry
entries.delete("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const deletedEntry = await deleteEntryById(id);
    res.status(200).json(deletedEntry);
  } catch (error) {
    res.status(404).json({ error: "Entry not found with this id" });
  }
});

module.exports = entries;
