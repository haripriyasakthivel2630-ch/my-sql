CREATE TABLE events (
    id INT PRIMARY KEY,
    event_name VARCHAR(50),
    event_date DATE
);

INSERT INTO events (id, event_name, event_date)
VALUES
(1, 'Conference', '2025-03-12'),
(2, 'Workshop', '2025-06-20'),
(3, 'Product Launch', '2025-11-05');

SELECT NOW() AS current_datetime;

SELECT 
    event_name,
    DATE_FORMAT(event_date, '%d-%M-%Y') AS formatted_date
FROM events;

SELECT 
    event_name,
    YEAR(event_date) AS event_year,
    MONTH(event_date) AS event_month
FROM events;

SELECT 
    CONCAT(event_name, ' on ', event_date) AS event_info
FROM events;