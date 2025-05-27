
  
  create view "memory"."main"."my_first_model__dbt_tmp" as (
    -- models/my_first_model.sql

/*
This is a simple SQL model.
It selects a constant value.
*/

SELECT 1 as id, 'test' as name
  );
