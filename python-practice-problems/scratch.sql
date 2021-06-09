SELECT c.contest_id
    , c.hacker_id
    , c.name
    , SUM(total_submissions) OVER(PARTITION BY c.contest_id,
        c.college_id) AS total_submissions
    , SUM(total_accepted_submissions) OVER(PARTITION BY c.contest_id,
        c.college_id) AS total_accepted_submissions
    , SUM(total_views) OVER(PARTITION BY c.contest_id,
        c.college_id) AS total_views
    , SUM(total_unique_views) OVER(PARTITION BY c.contest_id,
        c.college_id) AS total_unique_views-- exclude if all four sums are 0
FROM contests c
    JOIN colleges col ON c.contest_id = col.contest_id
    JOIN challenges ch ON col.college_id = ch.college_id
    JOIN view_stats vs ON ch.challenge_id = vs.challenge_id
    JOIN submission_stats ss ON ch.challenge_id = ss.challenge_id
WHERE c.contest_id = 66406
/* GROUP BY c.contest_id
    , col.college_id
     */
ORDER BY contest_id
;



SELECT *
FROM motorcycle_model
;

SELECT *
FROM country
;

SELECT *
FROM sales
;
/* country wise sales for all motorcycle models
*/
SELECT country_name
    , mototrcycle_model
    , revenue
FROM motorcycle_model
;


SELECT c.country_name
FROM country c
GROUP BY c.id
;

SELECT c.name
    , m.name
    , SUM(s.quantity*m.price) revenue
FROM country c
    JOIN sales s ON c.id = s.country_id
    JOIN motorcycle_model m ON m.id = s.model_id
WHERE YEAR(s.sales_date) = '2018'
GROUP BY c.id
    , m.name
ORDER BY 1 DESC
;


SELECT c.name
    , m.name
    , SUM(s.quantity*m.price) revenue
FROM sales s
    JOIN country c ON c.id = s.country_id
    JOIN motorcycle_model m ON m.id = s.model_id
WHERE s.sales_date BETWEEN '2018-01-01' AND '2018-12-31'
GROUP BY c.id
    , m.name
ORDER BY 1 DESC
;


SELECT c.name
    , m.name
    , SUM(s.quantity*m.price) revenue
FROM sales s
    JOIN country c ON c.id = s.country_id
    JOIN motorcycle_model m ON m.id = s.model_id
WHERE s.sales_date BETWEEN '2018-01-01' AND '2018-12-31'
    AND c.name = 'Canada'
GROUP BY c.name
    , m.name
;
