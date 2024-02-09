use anime;

select * from anime_reviews;

-- 1.the total number of anime
SELECT COUNT(Distinct(name)) AS total_anime
FROM anime_reviews;

-- 2. the top 10 anime name with the highest rating
SELECT 
	name, rating,episodes
FROM
    anime_reviews
ORDER BY
    rating DESC
limit 10;

-- 3.  top 10 anime movie with user ratings
SELECT
name, type, episodes, user_rating
FROM anime_reviews
WHERE episodes > 1 and type= 'Movie'
ORDER BY rating DESC
limit 10;


-- 4. Top 10 user rated animes by users.
SELECT 
   name, type, episodes, user_rating,count
FROM
    anime_reviews
WHERE
    episodes > 1
ORDER BY
    user_rating DESC,
    count asc
    limit 10;

-- 5. the top 10 popular anime titles with a single episode and non-zero ratings
SELECT 
    name, members,rating, episodes, user_rating
FROM
    anime_reviews
WHERE
    episodes = 1
    AND rating <> 0
ORDER BY
    popularity DESC
    limit 10;


-- 7.the top 10 popular anime titles with multiple episodes and non-zero ratings
SELECT 
    name, popularity, rating, episodes
FROM
    anime_reviews
WHERE
    episodes > 1
    AND rating <> 0
ORDER BY
    popularity DESC
    limit 10;



-- 8. 
SELECT
    name, rating, episodes
FROM
    anime_reviews
WHERE
    episodes = 0
ORDER BY
    rating DESC
    limit 10;


-- 9. the top 10 comedy anime titles (excluding 1-episode shows)
SELECT 
    name, rating, episodes, genres
FROM
    anime_reviews
WHERE
    episodes <> 1
    AND genres LIKE '%Comedy%'
ORDER BY
    rating DESC
    limit 10;

-- 10. the anime name with the highest rating 
SELECT
    name,
    user_rating AS top_rating
FROM
    anime_reviews
WHERE
    user_rating = (SELECT MAX(user_rating) FROM anime_reviews);


-- 11. the anime name with the lowest non-zero rating
SELECT
    name,
    user_rating AS lowest_rating
FROM
    anime_reviews
WHERE
    user_rating > 0 AND user_rating = (SELECT MIN(user_rating) FROM anime_reviews WHERE user_rating > 0);

-- 12. he top 10 episode counts with the most anime titles
SELECT 
    episodes,
    COUNT(*) AS no_of_animes
FROM
    anime_reviews
WHERE
    episodes > 1
GROUP BY
    episodes
ORDER BY
    no_of_animes DESC
    limit 10;