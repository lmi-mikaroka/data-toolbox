SELECT 

	station.num_fiche,
	station.code_village,
	station.code_engin,
	station.maree,
	station.code_pecheur,
	station.date_echg,
	station.nom_pecheur,
	station.cap_tot_brute,
	station.cap_tot_poisson,
	station.nbr_pecheur,
	station.site_1,
	station.site_2,	
	station.site_3,
	station.site_4,						
	station.observateur,							
	ST_X(ST_Centroid(ST_Collect(geom_spatial))) AS lon,
	ST_Y(ST_Centroid(ST_Collect(geom_spatial))) AS lat,
	ST_Centroid(ST_Collect(geom_spatial)) AS centroid

FROM 
	suivi.station station,
	recalibration.trajet_epure_proc_r trajet,
	recalibration.etat_predit etat_predit
WHERE
	trajet.code_village = station.code_village 
	AND 
	trajet.code_engin = station.code_engin 
	AND 
	trajet.code_village || '_' || trajet.code_engin || '_' || trajet.code_pecheur  = station.code_village || '_' || station.code_engin || '_' || station.code_pecheur
	AND 
	trajet.idpos = etat_predit.idpos 
	AND 
	etat_predit.etat_predit::text = 'Peche'::text

GROUP BY 

	station.num_fiche,
	station.code_village,
	station.code_engin,
	station.maree,
	station.code_pecheur,
	station.date_echg,
	station.nom_pecheur,
	station.cap_tot_brute,
	station.cap_tot_poisson,
	station.nbr_pecheur,
	station.site_1,
	station.site_2,	
	station.site_3,
	station.site_4,
	station.observateur							


;

