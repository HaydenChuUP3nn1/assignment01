create schema if not exists indego;

drop table if exists indego.trips_2021_q3;

create table indego.trips_2021_q3 (
    trip_id text,
    duration integer,
    start_time timestamp,
    end_time timestamp,
    start_station text,
    start_lat float,
    start_lon float,
    end_station text,
    end_lat float,
    end_lon float,
    bike_id text,
    plan_duration integer,
    trip_route_category text,
    passholder_type text,
    bike_type text
);

drop table if exists indego.trips_2022_q3;

create table indego.trips_2022_q3 (
    trip_id text,
    duration integer,
    start_time timestamp,
    end_time timestamp,
    start_station text,
    start_lat float,
    start_lon float,
    end_station text,
    end_lat float,
    end_lon float,
    bike_id text,
    plan_duration integer,
    trip_route_category text,
    passholder_type text,
    bike_type text
);

create extension if not exists postgis;


COPY indego.trips_2021_q3 FROM 'C:/Users/bchu/Documents/GitHub/assignment01/indego-trips-2021-q3.csv' CSV HEADER;

SELECT * FROM indego.trips_2021_q3


create schema if not exists indego;

drop table if exists indego.trips_2022_q3;

create table indego.trips_2022_q3 (
    trip_id text,
    duration integer,
    start_time timestamp,
    end_time timestamp,
    start_station text,
    start_lat float,
    start_lon float,
    end_station text,
    end_lat float,
    end_lon float,
    bike_id text,
    plan_duration integer,
    trip_route_category text,
    passholder_type text,
    bike_type text
);

create extension if not exists postgis;

COPY indego.trips_2022_q3 FROM 'C:/Users/bchu/Documents/GitHub/assignment01/indego-trips-2022-q3.csv' CSV HEADER;

SELECT * FROM indego.trips_2022_q3