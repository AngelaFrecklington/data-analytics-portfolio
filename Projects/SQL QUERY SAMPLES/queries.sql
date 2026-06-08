#Revenue by Publisher #
SELECT
    publisher,
    SUM(total_revenue) AS total_revenue
FROM games
GROUP BY publisher
ORDER BY total_revenue DESC;

#Top Publishers by Revenue Using RANK()#
SELECT
    publisher,
    SUM(total_revenue) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(total_revenue) DESC
    ) AS revenue_rank
FROM games
GROUP BY publisher;

#Average review score by publisher#
SELECT
    publisher,
    AVG(review_score) AS average_review_score
FROM games
GROUP BY publisher
ORDER BY average_review_score DESC;

#Games with Highest Positive Review Percentage#
SELECT
    game_name,
    positive_reviews,
    total_reviews,
    ROUND(
        (positive_reviews * 100.0) / total_reviews,
        2
    ) AS positive_review_percentage
FROM games
WHERE total_reviews > 0
ORDER BY positive_review_percentage DESC;

#Engagement Analysis#
SELECT
    game_name,
    owners,
    average_playtime,
    ROUND(
        average_playtime / owners,
        4
    ) AS engagement_ratio
FROM games
ORDER BY engagement_ratio DESC;
