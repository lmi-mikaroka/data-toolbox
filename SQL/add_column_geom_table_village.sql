--creér colonne the_geom de type geometry dans la table village le shema publique, 
SELECT AddGeometryColumn ('public','village','the_geom',4326,'POINT',2); 
 
--Metre à jour la colone the_geomla de la table village en remplacant les virgules (,)des colone longitude et latitude par des (.)
--pour pouvoir convertir les type varchar en numerique
UPDATE village SET the_geom = ST_SetSRID(st_makepoint(
	REPLACE(longitude, ',', '.')::numeric , 
	REPLACE(latitude, ',', '.')::numeric ),4326);