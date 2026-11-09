-- Table to store baseline educator demographics and school context
CREATE TABLE Educators (
    educator_id INT PRIMARY KEY,
    years_of_experience INT,
    subject_taught VARCHAR(100),
    school_location_type VARCHAR(50), -- e.g., Rural, Urban, Peri-urban
    ict_infrastructure_rating INT -- 1 to 5 scale
);

-- Table to store empirical survey responses on AI Readiness
CREATE TABLE AI_Readiness_Responses (
    response_id INT PRIMARY KEY,
    educator_id INT,
    ai_literacy_score INT, -- 1 to 5 scale
    algorithmic_bias_awareness INT, 
    data_privacy_comprehension INT,
    pedagogical_integration_readiness INT,
    FOREIGN KEY (educator_id) REFERENCES Educators(educator_id)
);
