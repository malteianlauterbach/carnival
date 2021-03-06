/* Create and connect to the database */
CREATE DATABASE carnival_db;

\c carnival_db;

/* Create tables */
CREATE TABLE IF NOT EXISTS users(
    secret_id VARCHAR,
    user_name VARCHAR,
    user_email VARCHAR PRIMARY KEY,
    user_games JSON [],
    user_preferences JSON
);


CREATE TABLE IF NOT EXISTS games(
    game_id VARCHAR,
    game_name VARCHAR,
    game_owner VARCHAR, -- userId
    game_scores JSON [],
    auth_token VARCHAR(64) -- fixed 64 characters long
);