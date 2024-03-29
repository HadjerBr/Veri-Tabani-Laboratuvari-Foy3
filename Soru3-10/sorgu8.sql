SELECT c.ad, c.soyad, c.maas
FROM CALISANLAR c
INNER JOIN (
    SELECT calisan_birim_id, MAX(maas) AS max_maas
    FROM CALISANLAR
    GROUP BY calisan_birim_id
) max_sal ON c.calisan_birim_id = max_sal.calisan_birim_id AND c.maas = max_sal.max_maas;
