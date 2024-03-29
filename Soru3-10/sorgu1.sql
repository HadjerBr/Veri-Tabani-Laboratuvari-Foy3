SELECT ad, soyad, maas
FROM CALISANLAR
WHERE calisan_birim_id IN (
    SELECT birim_id
    FROM BIRIMLER
    WHERE birim_ad IN ('yazılım', 'donanım')
);
