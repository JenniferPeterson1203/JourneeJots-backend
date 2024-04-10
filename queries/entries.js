const db = require("../db/dbConfig");

// function to access ALL entries
const getAllEntries = async () => {
  try {
    const allEntries = await db.any("SELECT * FROM entries");
    return allEntries;
  } catch (error) {
    return error;
  }
};

// function to access ONE specific entry
const getEntryById = async (id) => {
  try {
    const oneEntry = await db.one("SELECT * FROM entries WHERE id=$1", id);
    return oneEntry;
  } catch (error) {
    return error;
  }
};

// function to create a new entry
const createEntry = async (entries) => {
  const { user_id, entry_date, trip_id, location, entry, total_spent } =
    entries;
  try {
    const newEntry = await db.one(
      "INSERT INTO entries (user_id,entry_date,trip_id,location,entry,total_spent) VALUES($1, $2, $3, $4, $5, $6) RETURNING *",
      [user_id, entry_date, trip_id, location, entry, total_spent]
    );
    return newEntry;
  } catch (error) {
    return error;
  }
};

module.exports = { getAllEntries, getEntryById, createEntry };
