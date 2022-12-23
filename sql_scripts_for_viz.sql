-- We used Postgres to import data and get metrics from it
SELECT
	*
FROM
	billionaires_cleaned_data_2022;

--
SELECT
	country,
	COUNT(*) AS BillionairiesCountByCountry
FROM
	billionaires_cleaned_data_2022
GROUP BY
	country
ORDER BY
	BillionairiesCountByCountry DESC;

-- GROUP By category
SELECT
	category,
	COUNT(*) AS BillionairiesCountPerCategory
FROM
	billionaires_cleaned_data_2022
GROUP BY
	category
ORDER BY
	BillionairiesCountPerCategory DESC;

-- Group by age
SELECT
	age,
	COUNT(*) AS billionairies_count_per_age
FROM
	billionaires_cleaned_data_2022
GROUP BY
	age
ORDER BY
	age DESC;


SELECT
	country,
	SUM(cast(net_worth_billion_dollars AS INT)) AS TotalBillions
FROM
	billionaires_cleaned_data_2022
GROUP BY
	country;

-- Count of billionaires

SELECT
	COUNT(*)
FROM
	billionaires_cleaned_data_2022;

-- Top 20 richest person in the world
SELECT
	"rank",
	"name",
	net_worth_billion_dollars,
	category
FROM
	billionaires_cleaned_data_2022
LIMIT 20;


