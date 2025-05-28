-- This model selects all data from the raw piscine attendance data source.
-- It serves as a staging layer, simply ingesting the raw data as is.

SELECT *
FROM {{ source('raw_data', 'piscine_attendance') }}
