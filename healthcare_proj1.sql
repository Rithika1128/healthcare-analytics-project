SELECT COUNT(*) AS total_patients
FROM Healthcare_Dataset_10k_csv;


SELECT Gender, COUNT(*) AS Patients
FROM Healthcare_Dataset_10k_csv
GROUP BY Gender;


SELECT [Medical condition], COUNT(*) AS Patients
FROM Healthcare_Dataset_10k_csv
GROUP BY [Medical condition]
ORDER BY Patients DESC;


SELECT [Admission Type], COUNT(*) AS Patients
FROM Healthcare_Dataset_10k_csv
GROUP BY [Admission Type]
ORDER BY Patients DESC;



SELECT [Medical condition], ROUND(AVG([Billing Amount]),2) AS Avg_Bill
FROM Healthcare_Dataset_10k_csv
GROUP BY [Medical condition]
ORDER BY Avg_Bill DESC;



SELECT [Insurance Provider], ROUND(AVG([Billing Amount]),2) AS Avg_Bill
FROM Healthcare_Dataset_10k_csv
GROUP BY [Insurance Provider]
ORDER BY Avg_Bill DESC;



SELECT 
     CASE
	     WHEN Age < 20 THEN '0-19'
		 WHEN Age BETWEEN 20 AND 39 THEN '20-39'
		 WHEN Age BETWEEN 40 AND 59 THEN '40-59'
		 ELSE '60+'
	END AS Age_Group, COUNT(*) AS Patient_Count
FROM Healthcare_Dataset_10k_csv
GROUP BY Age_Group;
















