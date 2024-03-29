SELECT CALISANLAR.ad, CALISANLAR.soyad, BIRIMLER.birim_ad, UNVAN.unvan_calisan, IKRAMIYE.ikramiye_ucret
FROM CALISANLAR
JOIN BIRIMLER ON CALISANLAR.calisan_birim_id = BIRIMLER.birim_id
JOIN UNVAN ON CALISANLAR.calisan_id = UNVAN.unvan_calisan_id
JOIN IKRAMIYE ON CALISANLAR.calisan_id = IKRAMIYE.ikramiye_calisan_id;
