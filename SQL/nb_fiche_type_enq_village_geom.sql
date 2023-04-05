select
	e.code as code_enqueteur,
	e."type" as type_enqueteur,
	e.nom as nom_enqueteur ,
	v.nom as nom_village,
	v.the_geom as geom_village,
	count(f.id) as nb_fiches
from
	enqueteur e
inner join village v on
	v.id = e.village
inner join fiche f on
	e.id = f.enqueteur
group by
	e.code,
	e."type",
	e.nom ,
	v.the_geom,
	v.nom
order by
	nb_fiches desc
