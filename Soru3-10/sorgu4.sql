SELECT unvan_calisan, COUNT(*) AS calisan_sayisi
FROM UNVAN
GROUP BY unvan_calisan
HAVING COUNT(*) > 1;
