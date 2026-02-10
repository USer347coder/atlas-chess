-- Atlas Chess - Supabase Database Setup
-- Run this SQL in your Supabase SQL Editor

-- Create the chess_games table
CREATE TABLE IF NOT EXISTS chess_games (
    id BIGSERIAL PRIMARY KEY,
    winner TEXT NOT NULL,
    mode TEXT NOT NULL,
    ai_side TEXT,
    depth INTEGER,
    moves INTEGER NOT NULL,
    game_history TEXT[] NOT NULL,
    fen TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Create an index on created_at for faster queries
CREATE INDEX IF NOT EXISTS idx_chess_games_created_at ON chess_games(created_at DESC);

-- Enable Row Level Security (RLS)
ALTER TABLE chess_games ENABLE ROW LEVEL SECURITY;

-- Create a policy that allows anyone to read
CREATE POLICY "Allow public read access" ON chess_games
    FOR SELECT
    TO public
    USING (true);

-- Create a policy that allows anyone to insert
CREATE POLICY "Allow public insert access" ON chess_games
    FOR INSERT
    TO public
    WITH CHECK (true);

-- Optional: Create a view for top games by move count
CREATE OR REPLACE VIEW top_games AS
SELECT
    winner,
    mode,
    ai_side,
    depth,
    moves,
    created_at
FROM chess_games
ORDER BY created_at DESC
LIMIT 100;
