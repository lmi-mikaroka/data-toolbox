SELECT  n.nspname AS table_schema,
        pg_catalog.pg_get_userbyid(c.relowner) AS table_owner,
        c.relname AS table_name,
        pg_catalog.obj_description(c.oid, 'pg_class') AS comments,
        CASE c.relkind
            WHEN 'v'
            THEN pg_catalog.pg_get_viewdef(c.oid, true)
            ELSE null
            END AS query
    FROM pg_catalog.pg_class c
         LEFT JOIN pg_catalog.pg_namespace n ON (n.oid = c.relnamespace)
         LEFT JOIN pg_catalog.pg_attribute a ON (c.oid = a.attrelid AND a.attnum > 0 AND NOT a.attisdropped)
         LEFT JOIN pg_catalog.pg_stat_all_tables s ON (c.oid = s.relid)
    WHERE c.relkind  = 'v' and n.nspname= 'public'
GROUP BY n.nspname,
        c.relowner,
        c.relkind,
        c.relname,
        s.n_live_tup,
        c.oid
ORDER BY n.nspname,
        c.relname
;
--list la liste des  vue avec leur schema,proprietaire de la vue,le nom de la vue
--le commentaire et sa definition