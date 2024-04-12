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
const getEntriesByTripId = async (id) => {
  try {
    const tripEntries = await db.any(
      "SELECT * FROM entries WHERE trip_id=$1",
      id
    );
    return tripEntries;
  } catch (error) {
    return error;
  }
};

const getOneEntryById = async (id) => {
  // console.log("id:", id);
  try {
    const oneTripEntry = await db.one("SELECT * FROM entries WHERE id=$1", id);
    // console.log(oneTripEntry);
    return oneTripEntry;
  } catch (error) {
    return error;
  }
};

// function to create a new entry
const createEntry = async (entries) => {
  console.log("Q entries:", entries);
  const { user_id, entry_date, trip_id, entry, total_spent } = entries;
  try {
    const newEntry = await db.one(
      "INSERT INTO entries (user_id,entry_date,trip_id,entry,total_spent) VALUES($1, $2, $3, $4, $5) RETURNING *",
      [user_id, entry_date, trip_id, entry, total_spent]
    );
    console.log("Q new entry:", newEntry);
    return newEntry;
  } catch (error) {
    return error;
  }
};

const deleteEntryById = async (id) => {
  try {
    const deletedEntry = await db.one(
      "DELETE FROM entries WHERE id = $1 RETURNING *",
      id
    );
    return deletedEntry;
  } catch (error) {
    return error;
  }
};
module.exports = {
  getAllEntries,
  getEntriesByTripId,
  createEntry,
  deleteEntryById,
  getOneEntryById,
};
