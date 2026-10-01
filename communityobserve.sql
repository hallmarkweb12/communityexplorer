CREATE TABLE IF NOT EXISTS community_activity(
    activity_id INTEGER NOT NULL,
    activity_name TEXT NOT NULL,
    category TEXT NOT NULL,
    rating REAL,
    participants INTEGER NOT NULL,
    activity_year INTEGER NOT NULL
);

INSERT INTO community_activity
(activity_id, activity_name, category, rating, participants, activity_year)
VALUES
(1, 'Beach Cleanup', 'Environment', 8.7, 120, 2024),
(2, 'Coding Workshop', 'Technology', 9.5, 85, 2025),
(3, 'Football Tournament', 'Sports', 8.2, 200, 2024),
(4, 'Tree Planting', 'Environment', 9.1, 150, 2025),
(5, 'Reading Club', 'Education', 7.8, 45, 2023),
(6, 'Robotics Workshop', 'Technology', 9.7, 60, 2025),
(7, 'Basketball Camp', 'Sports', 8.9, 75, 2024),
(8, 'Maths Tutoring', 'Education', 8.4, 55, 2025);

SELECT * FROM community_activity;

SELECT activity_name, rating
FROM community_activity
ORDER BY rating DESC;

SELECT activity_name, rating
FROM community_activity
ORDER BY rating DESC
LIMIT 3;

SELECT activity_name, participants
FROM community_activity
ORDER BY participants ASC
LIMIT 3;

SELECT category, COUNT(*) AS activity_count
FROM community_activity
GROUP BY category;

SELECT category, AVG(rating) AS avg_rating
FROM community_activity
GROUP BY category
HAVING AVG(rating) > 8.5;

SELECT activity_name, rating
FROM community_activity
WHERE rating > 9;

SELECT activity_name, category
FROM community_activity
WHERE activity_name LIKE '%Workshop%';