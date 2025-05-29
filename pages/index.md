# Bordeaux Piscine Dashboard

## Sample Data from Parquet

```piscine_sample_data
SELECT * FROM read_parquet('bordeaux_piscine_data.parquet') LIMIT 10;
```

<DataTable data={piscine_sample_data}/>
