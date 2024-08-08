BEGIN FOR x IN (
    SELECT
        table_name
    FROM
        user_tables
    ) LOOP
    EXECUTE IMMEDIATE 'DROP TABLE'
                      || x.table_name
                      || 'CASCADE CONSTRAINT';
    END LOOP;
END;