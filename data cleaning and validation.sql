/* extracted day of the week
created trip duration in MINUTE
filetered out trip less than 1 minuite and greater than 24 hours
filtered out null values in start station and end station names*/

SELECT 
ride_id,
rideable_type,
EXTRACT(DATE FROM started_at) AS startdate,
EXTRACT(DAYOFWEEK FROM started_at) AS startday,
EXTRACT(DAYOFWEEK FROM ended_at) AS endday,
EXTRACT(TIME FROM started_at) AS starttime,
EXTRACT(TIME FROM ended_at) AS endtime,
DATETIME_DIFF(ended_at, started_at, MINUTE) AS trip_duration,
start_station_name,
start_station_id,
end_station_name,
end_station_id,
member_casual

FROM `myfirstproject-403814.Cyclist_Share.Cylistic_202204` 

WHERE
  (
    DATETIME_DIFF(ended_at, started_at, MINUTE) >= 1 AND
    DATETIME_DIFF(ended_at, started_at, MINUTE) <= 1440 AND
    rideable_type <> "docked_bike" AND
    start_station_name IS NOT NULL AND
    end_station_name IS NOT NULL
  )
  
  
 --there exist no null entry for docked_bikes with the corresponding start_station_name and end_station_name
 SELECT COUNT(*)
FROM `myfirstproject-403814.Cyclist_Share.data_aggregated`
WHERE start_station_name IS NULL AND end_station_name IS NULL AND rideable_type = "docked bike"



--DATA VALIDATION

--Ensured that number of data  clean data = original data - filtered data
SELECT
  (SELECT COUNT(*)
  FROM `myfirstproject-403814.Cyclist_Share.data_aggregated` 
  WHERE
    (
     DATETIME_DIFF(ended_at, started_at, MINUTE) >= 1 AND
     DATETIME_DIFF(ended_at, started_at, MINUTE) <= 1440 AND
    rideable_type <> "docked_bike" AND
     start_station_name IS NOT NULL AND
      end_station_name IS NOT NULL
    )) AS filtered_data,
  (SELECT COUNT(*)
  FROM `myfirstproject-403814.Cyclist_Share.dataset_aggregated`) AS cleaned_data,
  (SELECT COUNT(*)
  FROM `myfirstproject-403814.Cyclist_Share.data_aggregated`) AS original_data
  
  --Confirm if there still exist any null values
SELECT  count(NULL)

FROM `myfirstproject-403814.Cyclist_Share.dataset_aggregated` 
