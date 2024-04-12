const validateDestination = (req, res, next) => {
  const { destination } = req.body;
  if (!destination || destination.trim === "") {
    return res.status(400).json({ error: "Destination is required" });
  }
  next();
};

module.exports = { validateDestination };
