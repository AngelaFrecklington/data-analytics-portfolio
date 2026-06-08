-- ## SORTING (ORDER BY) ##

SELECT
    game_name,
    total_revenue
FROM games
ORDER BY total_revenue DESC;


-- ## FILTERING (WHERE) ##

SELECT
    game_name,
    review_score
FROM games
WHERE review_score > 80
ORDER BY review_score DESC;


-- ## AGGREGATIONS (SUM, AVG, COUNT) ##

SELECT
    publisher,
    COUNT(*) AS total_games,
    SUM(total_revenue) AS total_revenue,
    AVG(review_score) AS average_review_score
FROM games
GROUP BY publisher;


-- ## GROUPING (GROUP BY) ##

SELECT
    publisher,
    COUNT(game_name) AS number_of_games
FROM games
GROUP BY publisher
ORDER BY number_of_games DESC;


-- ## CALCULATED COLUMNS ##

SELECT
    game_name,
    positive_reviews,
    total_reviews,
    ROUND(
        (positive_reviews * 100.0) / total_reviews,
        2
    ) AS review_percentage
FROM games
WHERE total_reviews > 0;


-- ## CASE STATEMENTS ##

SELECT
    game_name,
    review_score,
    CASE
        WHEN review_score >= 90 THEN 'Excellent'
        WHEN review_score >= 75 THEN 'Good'
        ELSE 'Average'
    END AS review_category
FROM games;


-- ## WINDOW FUNCTIONS (RANK) ##

SELECT
    publisher,
    SUM(total_revenue) AS total_revenue,
    RANK() OVER(
        ORDER BY SUM(total_revenue) DESC
    ) AS revenue_rank
FROM games
GROUP BY publisher;


-- ## INNER JOIN ##

SELECT
    g.game_name,
    g.publisher,
    p.publisher_country
FROM games g
INNER JOIN publishers p
    ON g.publisher = p.publisher_name;


-- ## LEFT JOIN ##

SELECT
    g.game_name,
    g.publisher,
    p.publisher_country
FROM games g
LEFT JOIN publishers p
    ON g.publisher = p.publisher_name;


-- ## HAVING ##

SELECT
    publisher,
    SUM(total_revenue) AS total_revenue
FROM games
GROUP BY publisher
HAVING SUM(total_revenue) > 1000000;


-- ## COMMON TABLE EXPRESSIONS (CTE) ##

WITH publisher_revenue AS (
    SELECT
        publisher,
        SUM(total_revenue) AS total_revenue
    FROM games
    GROUP BY publisher
)

SELECT *
FROM publisher_revenue
ORDER BY total_revenue DESC;
