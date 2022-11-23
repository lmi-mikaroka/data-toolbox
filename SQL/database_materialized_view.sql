

SELECT schemaname AS table_schema,
       matviewname AS table_name,
       matviewowner AS table_owner,
       ispopulated AS is_populated,
       definition
FROM pg_matviews
ORDER BY table_schema,
         table_name;
--list la liste des vues materialisées avec leur schema,le nom de la vue,proprietaire de la vue,
--l'information sur le remplisage et sa definition