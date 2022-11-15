SELECT * FROM pg_catalog.pg_tables WHERE schemaname != 'pg_catalog' AND   schemaname != 'information_schema';
-- SELECT * FROM information_schema.tables WHERE table_type = 'BASE TABLE' AND table_schema NOT IN ('information_schema', 'pg_catalog');

