-- 1.	Count Cities in USA
SELECT count(distinct (Name))
FROM City
WHERE countrycode = 'USA';
-- 2.	Country with Highest Life Expectancy
SELECT Name, LifeExpectancy
FROM Country
ORDER BY LifeExpectancy DESC;
-- 3.	"New Year Promotion: Featuring Cities with 'New 
SELECT Name
FROM city
WHERE Name Like '%New%';
-- 4.	Display Columns with Limit (First 10 Rows): 
SELECT Name, population
From city
Order By Population DESC
LIMIT 10;
-- 5.	Cities with Population Larger than 2,000,000
SELECT Name, Population
FROM city
WHERE population > 2000000;
-- 6.	Cities Beginning with 'Be' Prefix
SELECT Name
FROM city
WHERE Name LIKE 'BE%';
-- 7.	Cities with Population Between 500,000-1,000,000
SELECT Name, Population
FROM city
WHERE Population Between 500000 and 1000000;
-- 8.	Display Cities Sorted by Name in Ascending Order
SELECT Name
FROM city
ORDER BY Name;
-- 9.	Most Populated City
SELECT Name, Population
FROM city
ORDER BY population DESC
LIMIT 1;
-- City Name Frequency Analysis: Supporting Geography Education 
SELECT count(Name), Name
From city
Group BY name
Order By name;
-- 11.	City with the Lowest Population
SELECT Name, Population
FROM  city
ORDER BY Population;
-- 12.	Country with Largest Population:
SELECT Name, Population
FROM country
ORDER BY Population DESC;
-- 13.	Capital of Spain
SELECT City.name, country.name, city.population, City.ID
FROM country
INNER JOIN city on city.ID = country.Capital
WHERE code = 'ESP';
-- 14.	Cities in Europe
Select country.continent, city.name as city, country.name as country
From country
Join City on country.code = city.countrycode
WHERE continent = 'Europe';
-- 15.	Average Population by Country
 Select population, Name
 from country;
 -- 16.	Capital Cities Population Comparison
 SELECT City.name as CapitalCity, country.name as country, city.population, City.ID
FROM country
INNER JOIN city on city.ID = country.Capital
Order by city.population DESC;
-- 17.	Countries with Low Population Density
SELECT (population/surfacearea) as PopulationDensity, name as country
from country
Order By PopulationDensity
Limit 20;
-- 18.	Cities with High GDP per Capita
select city.name as city, country.name as country, (country.GNP/country.Population) as gdp_per_capita
from city
join country on city.countrycode = country.code
where (country.GNP/country.Population) > 
(select avg(gnp/population) from country)
order by gdp_per_capita;
-- 19.	Display Columns with Limit (Rows 31-40)
select city.name, country.name, (country.GNP/country.Population) as gdp_per_capita
from city
join country on city.countrycode = country.code
where (country.GNP/country.Population) > 
(select avg(gnp/population) from country)
order by gdp_per_capita
limit 10 offset 30;





