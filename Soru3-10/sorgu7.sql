SELECT ad, soyad, unvan_calisan
FROM CALISANLAR
JOIN UNVAN ON CALISANLAR.calisan_id = UNVAN.unvan_calisan_id
WHERE unvan_calisan IN ('Yönetici', 'Müdür');
