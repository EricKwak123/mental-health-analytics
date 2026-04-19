SELECT Gender_Clean, mental_health_consequence, COUNT(*) AS response_count
FROM mental_health
GROUP BY Gender_Clean, mental_health_consequence
ORDER BY Gender_Clean, mental_health_consequence;
-- adding numerical comparison to quantify consequence
SELECT Gender_Clean,
       AVG(CASE 
           WHEN mental_health_consequence = 'No' THEN 0
           WHEN mental_health_consequence = 'Maybe' THEN 50
           WHEN mental_health_consequence = 'Yes' THEN 100
       END) AS avg_consequence_score
FROM mental_health
GROUP BY Gender_Clean
ORDER BY avg_consequence_score DESC;
