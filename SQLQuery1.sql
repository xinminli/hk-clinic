--SELECT location, date,total_cases, new_cases, total_deaths, population
--FROM dbo.owid_covid
--ORDER BY total_deaths DESC, date

-- looking at total cases vs total deaths

--SELECT location, date,total_cases, new_cases, total_deaths, 
--(CAST(total_deaths AS float)/CAST(total_cases AS float))*100 as deathpercentage
--FROM dbo.owid_covid 
--WHERE (CAST(total_cases AS float) > 5000) AND
--	(location LIKE 'U%States')

--ORDER BY date DESC, deathpercentage DESC

--SELECT  MAX(cast(total_deaths as float)) as max, location
--FROM dbo.owid_covid 
--WHERE continent != 'null'
--GROUP BY location
--ORDER BY MAX(cast(total_deaths as float)) DESC

----Global numbers
--SELECT date, sum(CAST(new_cases as float)),sum(CAST(new_deaths as float))
--FROM  dbo.owid_covid
--GROUP BY date
--ORDER BY sum(CAST(new_cases as float)) DESC

--SELECT location, 
--sum(CAST(new_vaccinations as float))/sum(CAST(population as float))*100  
--as totalVax
--FROM dbo.owid_covid

--GROUP BY location
--HAVING sum(CAST(population as float)) > 0
--ORDER BY totalVax DESC
--with new_table (location, totalVaxPercentge)
--as
--(
--SELECT location, 
--sum(CAST(new_vaccinations as float))/sum(CAST(population as float))*100  
--FROM dbo.owid_covid
--GROUP BY location
--HAVING sum(CAST(population as float)) > 0
--)

--SELECT * FROM new_table
--ORDER BY totalVaxPercentge DESC

--DROP TABLE if exists #PercentVaxed

--create table #PercentVaxed
--(
--continent nvarchar(255),
--location nvarchar(255),
--date datetime,
--population float,
--new_vaccinations float
--)
--insert into #PercentVaxed
--SELECT continent,location, date, CAST(population as float), 
--CAST(new_vaccinations as float)
--FROM dbo.owid_covid


--SELECT * 
--FROM #PercentVaxed

create view Percentagevax as
SELECT continent,location, date, CAST(population as float), 
CAST(new_vaccinations as float)
FROM dbo.owid_covid
GROUP BY continent

select * FROM dbo.employ_table


