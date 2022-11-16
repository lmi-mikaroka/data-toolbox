SELECT schemaname,tablename FROM pg_catalog.pg_tables 
WHERE schemaname != 'pg_catalog' 
AND   schemaname != 'information_schema'
ORDER BY schemaname,tablename ;

-- SELECT * FROM information_schema.tables WHERE table_type = 'BASE TABLE' AND table_schema NOT IN ('information_schema', 'pg_catalog');

