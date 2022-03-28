--create view Percentagevax as
--SELECT continent, sum(CAST(population as float)) as summary, 
--sum(CAST(new_vaccinations as float)) as sumVax
--FROM dbo.owid_covid
--GROUP BY continent

select * from Percentagevax