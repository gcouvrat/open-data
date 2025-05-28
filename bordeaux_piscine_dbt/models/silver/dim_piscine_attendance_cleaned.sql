-- This model cleans and transforms the raw piscine attendance data.
-- It renames columns for clarity and casts them to appropriate data types.

SELECT
    etablissement_etalib AS establishment_name,
    fmizonlib AS zone_name,
    CAST(fmizonnum AS INTEGER) AS zone_number,
    CAST(fmizonmax AS INTEGER) AS zone_max_capacity,
    CAST(datemiseajour AS TIMESTAMP) AS updated_at, -- DuckDB should handle timestamp conversion from various formats
    CAST(entree AS INTEGER) AS entries_count,
    CAST(sortie AS INTEGER) AS exits_count,
    CAST(fmicourante AS INTEGER) AS current_occupancy
FROM {{ ref('stg_piscine_attendance') }}
