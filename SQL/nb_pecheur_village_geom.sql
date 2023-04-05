select
	village.nom as nom_village,
	village.the_geom ,
	count(*)as nombre_de_pecheur
from
	pecheur
inner join village on
	pecheur.village = village.id
group by
	village.nom,
	village.the_geom
order by
	nombre_de_pecheur desc