/*
    Give the five most popular starting stations across all years between 7am
    and 9:59am.

    Your result should have 5 records with three columns, one for the station id
    (named `station_id`), one for the point geography of the station (named
    `station_geog`), and one for the number of trips that started at that
    station (named `num_trips`).
*/

-- Enter your SQL query here

SELECT
start_station AS station_id,
ST_MakePoint(start_lon, start_lat) AS station_geog,
COUNT(*) AS num_trips
FROM indego.trips_2021_q3
WHERE EXTRACT(HOUR FROM start_time) BETWEEN 7 AND 9
GROUP BY start_station, start_lon, start_lat
UNION ALL
SELECT
start_station AS station_id,
ST_MakePoint(start_lon, start_lat) AS station_geog,
COUNT(*) AS num_trips
FROM indego.trips_2022_q3
WHERE EXTRACT(HOUR FROM start_time) BETWEEN 7 AND 9
GROUP BY start_station, start_lon, start_lat
ORDER BY num_trips DESC
LIMIT 5;

/*
3032	0101000000E8305F5E80CB52C0B96DDFA3FEF84340	960
3102	0101000000963E74417DCB52C0E4F736FDD9FB4340	956
3012	0101000000A1478C9E5BCB52C0CFF4126399F84340	901
3032	0101000000E8305F5E80CB52C0B96DDFA3FEF84340	868
3066	0101000000ED66463F1ACB52C0A2629CBF09F94340	818
*/
/*
    Hint: Use the `EXTRACT` function to get the hour of the day from the
    timestamp.
*/


