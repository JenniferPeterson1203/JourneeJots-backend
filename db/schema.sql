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
    country VARCHAR(56) NOT NULL
);


CREATE TABLE trips (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    destination VARCHAR(50),
    first_time BOOLEAN DEFAULT TRUE,
    start_date DATE,
    end_date DATE,
    budget INTEGER,
    total_cost INTEGER,
    climate varchar(5)
);

