-- Average, max and min trip duration my members
SELECT 
  ROUND(AVG(trip_duration),2) AS trip_duration_avg,
  MAX(trip_duration) AS trip_duration_max,
  MIN(trip_duration) AS trip_duration_min,
  member_casual AS member_type

FROM `myfirstproject-403814.Cyclist_Share.dataset_aggregated`

GROUP BY member_casual

ORDER BY member_casual DESC

--further look into the trip_duration_avg
SELECT 
  ROUND(AVG(trip_duration),2) AS trip_duration_avg,
  MAX(trip_duration) AS trip_duration_max,
  MIN(trip_duration) AS trip_duration_min,
  member_casual AS member_type,
  startday

FROM `myfirstproject-403814.Cyclist_Share.dataset_aggregated`

GROUP BY member_casual, startday

ORDER BY startday, ROUND(AVG(trip_duration),2) DESC

--member by rideable TYPE
SELECT 
  rideable_type,
   COUNT(rideable_type) no_of_bike_type,
   member_casual AS member_type

FROM `myfirstproject-403814.Cyclist_Share.dataset_aggregated`

GROUP BY member_casual,rideable_type

ORDER BY member_casual





--ANALYSIS BY STATION TYPE

--Popupal station among rider
SELECT
  member_casual,
  start_station_name,
  end_station_name,
  COUNT(*) AS trip_count
FROM
  `myfirstproject-403814.Cyclist_Share.dataset_aggregated`
GROUP BY
  member_casual,
  start_station_name,
  end_station_name
ORDER BY
  trip_count DESC;
  
-- Get the most popular start stations for annual members
SELECT
  start_station_name,
  COUNT(*) AS trip_count
FROM
  `myfirstproject-403814.Cyclist_Share.dataset_aggregated`
WHERE
  member_casual = 'member'
GROUP BY
  start_station_name
ORDER BY
  trip_count DESC

-- Get the most popular end station for annual members
SELECT
  end_station_name,
  COUNT(*) AS trip_count
FROM
  `myfirstproject-403814.Cyclist_Share.dataset_aggregated`
WHERE
  member_casual = 'member'
GROUP BY
  end_station_name
ORDER BY
  trip_count DESC
  
-- Get the most popular start stations for casual members
SELECT
  start_station_name,
  COUNT(*) AS trip_count
FROM
  `myfirstproject-403814.Cyclist_Share.dataset_aggregated`
WHERE
  member_casual = 'casual'
GROUP BY
  start_station_name
ORDER BY
  trip_count DESC  
  
-- Get the most popular end stations for casual members
SELECT
  end_station_name,
  COUNT(*) AS trip_count
FROM
  `myfirstproject-403814.Cyclist_Share.dataset_aggregated`
WHERE
  member_casual = 'casual'
GROUP BY
  end_station_name
ORDER BY
  trip_count DESC  
