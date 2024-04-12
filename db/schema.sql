-- db/schema.sql
DROP DATABASE IF EXISTS journeejots;

CREATE DATABASE journeejots;


\c journeejots


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    country TEXT NOT NULL
);


CREATE TABLE trips (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    destination VARCHAR(50),
    first_time BOOLEAN DEFAULT TRUE,
    start_date DATE,
    end_date DATE,
    budget INTEGER,
    total_cost INTEGER,
    climate TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE entries (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    entry_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    trip_id INTEGER REFERENCES trips(id) ON DELETE CASCADE,
    entry TEXT,
    total_spent INTEGER
);


