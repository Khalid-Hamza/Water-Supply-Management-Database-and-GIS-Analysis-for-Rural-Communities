----1. Display the list of villages (all attributes except coordinates) where the population is greater than or equal to 400.
select * from douar
where population >= 400;


----2. Update the population of the village “Tihli” to 399.
update  douar
set population = 399
where name_douar = 'tihli';


----3. List the boreholes (borehole_id, flow_rate, name_nappe) that produce a flow greater than 75 l/s and are located in the deep aquifer of Sais.
select borehole_id, flow_rate, name_nappe 
from borehole , nappe
where aquifer=num_nappe
and flow_rate > 75 
and name_nappe like 'Sais%';


----4. Which villages (village_name, borehole_id) are supplied by borehole N°1238 or borehole N° 1414?
select name_douar , borehole 
from  douar
where borehole in  (1238 , 1414);


----5. Give the total number of inhabitants supplied with drinking water from borehole N°1238. The result should be a single column named: "total_population".
select sum(population) as total_population
from douar 
where borehole > 1238;


----6. Which villages (village_name, water_need) have the same water need as the village “Ben Smim”? (Note: Ben Smim should not appear in the list)
select name_douar , water_need 
from  douar 
where water_need = (select water_need from douar where name_douar = 'ben smim')
and name_douar <> 'ben smim';


----7. Which is the most productive borehole (having the maximum flow rate) in the deep Sais aquifer?
select * from borehole
where flow_rate = (select max(flow_rate) 
from borehole, nappe
where aquifer = num_nappe
and name_nappe = 'Sais profonde')


----8. Give the total number of inhabitants supplied with drinking water from the Gharb aquifer.
select sum(population)
from douar,borehole,nappe
where num_nappe=aquifer and borehole_id=borehole
and name_nappe = 'gharb'


----9. List the boreholes (borehole_id, aquifer_name, aquifer_type) that are drilled in limestones.
select borehole_id, name_nappe, aquifer_type
from borehole, nappe
where num_nappe=aquifer
and aquifer_type = 'Calcaires';


----10. Give, in descending order, the average flow rate of boreholes by aquifer (aquifer_name, average_flow_rate).
select name_nappe,avg(flow_rate) as average_flow_rate
from borehole,nappe
where num_nappe=aquifer
group by name_nappe
order by avg(flow_rate) desc;


----11. Calculate the surface area of the three aquifers numbered 1, 3, and 4.
select name_nappe , ST_Area(coordinates) as surface
from nappe 
where num_nappe in (1,2,4)















