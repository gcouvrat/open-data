# Piscine Bordeaux Occupancy

```sql fact_occupancy
SELECT
    date_hour,
    establishment_name,
    piscine_name,
    total_occupancy,
    occupancy_percentage
FROM bordeaux_db.fact_hourly_occupancy
ORDER BY date_hour DESC
LIMIT 10
```

<DataTable data={fact_occupancy}/>
