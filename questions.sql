--Question 1 - via https://datalemur.com/questions/sql-case-marvel-avengers

SELECT actor, character, platform, avg_likes,
  -- creating case condition for different categories 
CASE
  WHEN avg_likes >= 15000 then 'Super Likes'
  WHEN avg_likes between 5000 and 14999 then 'Good Likes'
  WHEN avg_likes < 5000 then 'Low Likes'
  -- enter new column name
END AS likes_category
FROM marvel_avengers
ORDER BY avg_likes desc; 
