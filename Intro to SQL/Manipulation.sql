-- I tro to SQL
SELECT * FROM celebs;

-- Create
CREATE TABLE celebs (
    id INTEGER,
    name TEXT,
    age INTEGER
);
-- Insert
INSERT INTO celebs (id, name, age) VALUES (1, "Justin Bieber", 29);

INSERT INTO
    celebs (id, name, age)
VALUES (2, 'Beyonce Knowles', 42);

INSERT INTO celebs (id, name, age) VALUES (3, 'Jeremy Lin', 35);

INSERT INTO
    celebs (id, name, age)
VALUES (4, 'Taylor Swift', 33);

SELECT * FROM celebs;

-- Select
SELECT * FROM celebs;

-- Alter
ALTER TABLE celebs ADD COLUMN twitter_handle TEXT;

SELECT * FROM celebs;

-- Update
UPDATE celebs SET twitter_handle = '@taylorswift13' WHERE id = 4;

SELECT * FROM celebs;

-- Delete
DELETE FROM celebs WHERE twitter_handle IS NULL;

SELECT * FROM celebs;

-- Constraints
CREATE TABLE awards (
    id INTEGER PRIMARY KEY,
    recipient TEXT NOT NULL,
    award_name TEXT DEFAULT 'Grammy'
);

