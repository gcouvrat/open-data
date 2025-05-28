-- This model calculates hourly occupancy metrics from the cleaned attendance data.
-- It aggregates data by establishment, zone, date, and hour.

SELECT
    establishment_name,
    zone_name,
    CAST(updated_at AS DATE) AS reporting_date,
    EXTRACT(HOUR FROM updated_at) AS reporting_hour,
    AVG(current_occupancy) AS avg_hourly_occupancy,
    MAX(current_occupancy) AS max_hourly_occupancy
FROM {{ ref('dim_piscine_attendance_cleaned') }}
GROUP BY
    establishment_name,
    zone_name,
    CAST(updated_at AS DATE),
    EXTRACT(HOUR FROM updated_at)
ORDER BY
    reporting_date,
    reporting_hour,
    establishment_name,
    zone_name
