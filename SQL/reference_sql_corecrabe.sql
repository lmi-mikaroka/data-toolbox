--La liste des engins utilisés pour capturer les crabes avec leur nombre minimum et maximum
select * from engin

--Données sur la taille maximale, minimale et moyenne des crabes groupés par sexe
select
	max(taille) as taille_maximale,
	min (taille)as taille_minimale,
	ROUND(avg(taille)) as taille_moyenne,
	sexe
from
	crabe c
group by
	sexe
	
--La liste des tailles minimales des crabes groupés par sexe et destination
select
	taille as taille_crabe ,
	sexe as sexe_crabe,
	destination as destination_crabe
from
	crabe c
where
	taille = (
	select
		min(taille)
	from
		crabe c2 )
group by
	destination ,
	sexe ,
	taille
	
-- La liste village par des nombres des pêcheurs par ordre décroisant
	
select
	village.nom as nom_village,
	count(*)as nombre_de_pecheur
from
	pecheur
inner join village on
	pecheur.village = village.id
group by
	village.nom
order by
	nombre_de_pecheur desc
	
/*La liste des nombres des fiches renseignées par les enquêteurs avec le code et le type des enquêteurs 
par village par ordre décroisant*/
	
select
	e.code as code_enqueteur,
	e."type" as type_enqueteur,
	e.nom as nom_enqueteur ,
	v.nom as nom_village,
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
	v.nom
order by
	nb_fiches desc
	
/*La liste des nombres des crabes capturés grouper par nom engin, nom village, nom fokontany, 
nom commune, nom district, nom région, nom de la zone corecrabe*/
	
select
	count(crabe)as nombre_crabe,
	engin.nom as engin,
	village.nom as Village ,
	fokontany.nom as Fokontany,
	commune.nom as commune ,
	district.nom as district,
	region.nom as region,
	zone_corecrabe.nom as zone
from
	sortie_de_peche_enqueteur
join engin_sortie_de_peche_enqueteur on
	engin_sortie_de_peche_enqueteur.sortie_de_peche_enqueteur = sortie_de_peche_enqueteur.id
join engin on
	engin.id = engin_sortie_de_peche_enqueteur.engin
join fiche_enqueteur on
	fiche_enqueteur.id = sortie_de_peche_enqueteur.fiche_enqueteur
join echantillon on
	echantillon.fiche_enqueteur = fiche_enqueteur.id
join crabe on
	crabe.echantillon = echantillon.id
join pecheur on
	fiche_enqueteur.pecheur = pecheur.id
join village on
	pecheur.village = village.id
join fokontany on
	village.fokontany = fokontany.id
join commune on
	fokontany.commune = commune.id
join district on
	commune.district = district.id
join region on
	district.region = region.id
join zone_corecrabe on
	region.zone_corecrabe = zone_corecrabe.id
where
	engin.id != 1
group by
	engin.nom ,
	village.nom,
	fokontany.nom,
	commune.nom,
	district.nom,
	region.nom,
	zone_corecrabe.nom
