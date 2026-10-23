SELECT 
    *
FROM
    insurence.insurence_data;
# showing policy count by Policy_Type
SELECT 
    Policy_Type, COUNT(Policy_ID)
FROM
    insurence_data
GROUP BY Policy_Type;
# Show total premium by State.
SELECT 
    State, SUM(Premium_Amount_INR)
FROM
    insurence_data
GROUP BY State;
# Show average premium by Policy_Type.
SELECT 
    Policy_Type, ROUND(AVG(Premium_Amount_INR), 2)
FROM
    insurence_data
GROUP BY Policy_Type;
# Show claim count by Claim_Status.
SELECT 
    Claim_Status, COUNT(Claim_Amount_INR)
FROM
    insurence_data
GROUP BY Claim_Status;
# Show total claim amount by State and Claim_Status
SELECT 
    Claim_Status, State, SUM(Claim_Amount_INR)
FROM
    insurence_data
GROUP BY Claim_Status , State;
#  Show policy count by Agent_Name and Policy_Status.
SELECT 
    Agent_Name, Policy_Status, COUNT(Policy_ID)
FROM
    insurence_data
GROUP BY Agent_Name , Policy_Status;
#  Compare average Customer_Rating_1_to_5 by Policy_Type
SELECT 
    Policy_Type, AVG(Customer_Rating_1_to_5)
FROM
    insurence_data
GROUP BY Policy_Type;
#  Find the top 5 cities by total premium.
SELECT 
    City, Premium_Amount_INR
FROM
    insurence_data
ORDER BY Premium_Amount_INR DESC
LIMIT 5;
# Compare Renewed vs Not Renewed policies by Policy_Type.
SELECT 
    Renewal_Status, COUNT(Policy_ID)
FROM
    insurence_data
GROUP BY Renewal_Status;



