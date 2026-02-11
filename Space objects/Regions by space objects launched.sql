Select Region, SUM(Number_of_objects_launched_into_space) AS Number_of_objects_launched_into_space FROM [Space objects 2025]
GROUP by Region
ORDER BY Number_of_objects_launched_into_space DESC;