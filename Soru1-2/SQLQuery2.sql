CREATE TABLE BIRIMLER (
    birim_id INT PRIMARY KEY NOT NULL,
    birim_ad CHAR(25) NOT NULL
);

CREATE TABLE CALISANLAR (
    calisan_id INT PRIMARY KEY NOT NULL,
    ad CHAR(25),
    soyad CHAR(25),
    maas INT,
    katilmaTarihi DATETIME,
    calisan_birim_id INT, 
    CONSTRAINT Fk_calisanBirimId FOREIGN KEY (calisan_birim_id) REFERENCES BIRIMLER(birim_id)
);

CREATE TABLE IKRAMIYE (
    ikramiye_id INT PRIMARY KEY NOT NULL,
    ikramiye_calisan_id INT,
    ikramiye_ucret INT,
    ikramiye_tarih DATETIME,
    CONSTRAINT Fk_ikramiye_calisan_id FOREIGN KEY (ikramiye_calisan_id) REFERENCES CALISANLAR(calisan_id)
);

CREATE TABLE UNVAN (
    unvan_id INT PRIMARY KEY NOT NULL,
    unvan_calisan_id INT,
    unvan_calisan CHAR(25),
    unvan_tarih DATETIME,
    CONSTRAINT Fk_unvan_calisan_id FOREIGN KEY (unvan_calisan_id) REFERENCES CALISANLAR(calisan_id)
);
