SELECT columns.table_schema AS "table_schema",
       columns.table_name AS "FeatureType",
       columns.ordinal_position AS "position",
       columns.column_name AS "MemberCode",
       columns.column_name AS "MemberName",
       'attribute' AS "MemberType",
       case when columns.is_nullable = 'NO'
            then 1
            else 0 end AS "MinOccurs",
       1 AS "MaxOccurs",
       columns.column_default as default_value,       
      'none' AS "DefinitionSource",
      'blabla' AS "Definition",      
       columns.data_type AS "valueType",
       case when character_maximum_length is not null
            then character_maximum_length
            else numeric_precision end AS "max_length",            
       NULL AS "MeasurementUnit",
       NULL AS "RegisterId",
       NULL AS "RegisterScript"
FROM 
	information_schema.columns columns,
	pg_catalog.pg_tables tables 
	
WHERE 
	columns.table_schema NOT IN ('information_schema', 'pg_catalog') 
	AND columns.table_schema =  tables.schemaname 
	AND columns.table_name =  tables.tablename 
	AND columns.table_name IN (SELECT tablename 
					FROM pg_catalog.pg_tables 
					WHERE schemaname NOT IN  ('information_schema', 'pg_catalog', 'svg', 'historique','geo')
					AND tablename NOT IN  ('geometry_columns','geography_columns', 'spatial_ref_sys','raster_columns','raster_overviews')
					)
order by table_schema, 
         table_name,
         ordinal_position
         
         ;


