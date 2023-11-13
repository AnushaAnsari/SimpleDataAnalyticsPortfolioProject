use cars;

-- Read data --
select * from car_dekho;

-- Total cars to get total count --
select count(*) from car_dekho;

-- How many cars available in 2023 --
select count(*) from car_dekho where year = 2023; 

-- How many cars available in 2020,2021,2022 --
select count(*) from car_dekho where year = 2020;
select count(*) from car_dekho where year = 2019;

-- Group By--
select count(*) from car_dekho where year in (2020,2021,2022);
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Print total of all thecars by the year --
select year, count(*) from car_dekho group by year;

-- How many  diesel cars will be available in 2020 --
select * from car_dekho;
select count(*) from car_dekho where year= 2020 && fuel= "Diesel";

-- Petrol cars in 2020 --
select count(*) from car_dekho where year= 2020 and fuel= "Petrol";

-- Total no. of different types of cars in each year i.e Petrol, Diesel*
select year, count(*) from car_dekho where fuel="CNG"group by year;
select year, count(*) from car_dekho where fuel="Petrol"group by year;
select year, count(*) from car_dekho where fuel="Diesel"group by year;

-- Which year had more than 100 cars --
select year, count(*) from car_dekho group by year having count(*)>100;

-- Which year had less than 50 cars --
select year, count(*) from car_dekho group by year having count(*)<50;

-- all car count(*) detail between 2015 to 2023 --
select count(*) from car_dekho where year between 2015 and 2023;

-- all car detail between 2015 to 2023 --
select * from car_dekho where year between 2015 and 2023;