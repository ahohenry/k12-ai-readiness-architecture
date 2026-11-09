-- Query to identify the gap in AI pedagogical readiness based on school location
SELECT 
    e.school_location_type,
    AVG(r.ai_literacy_score) AS avg_literacy,
    AVG(r.pedagogical_integration_readiness) AS avg_pedagogical_readiness
FROM Educators e
JOIN AI_Readiness_Responses r ON e.educator_id = r.educator_id
GROUP BY e.school_location_type
ORDER BY avg_pedagogical_readiness ASC;
