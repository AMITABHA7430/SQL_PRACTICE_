-- LeetCode 197: Rising Temperature

-- We use the Weather table twice:
-- w1 represents the current day
-- w2 represents the previous day
SELECT w1.id
FROM Weather w1

-- Match w1 with the previous day's record
-- DATE_ADD() adds 1 day to w2's date
-- So w1.recordDate = w2.recordDate + 1 day
JOIN Weather w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)

-- Check whether the current day's temperature
-- is greater than the previous day's temperature
WHERE w1.temperature > w2.temperature;
