#1. buat user create user DBSEC identified by secc$1new;

create user DBSEC2 identified by secc1new;

GRANT CONNECT, RESOURCE to DBSEC;

GRANT ALL PRIVILEGES to DBSEC;

GRANT ALL PRIVILEGES to DBSEC2;

#2. Buat tabel PELANGGAN
CREATE TABLE CUSTOMER (
    LOKASI_ID NUMBER(4) NULL,
    PELANGGAN_ID NUMBER(8) NOT NULL,
    NAMA_LENGKAP VARCHAR2(100) NULL,
    KOTA VARCHAR2(30) NULL,
    PROPINSI VARCHAR2(30) NULL,
    EMAIL VARCHAR2(80) NULL,
    GENDER CHAR(1) NULL,
    STATUS CHAR(1) NULL,
    USERNAME VARCHAR2(30),
    PRIMARY KEY(PELANGGAN_ID)
);

CREATE VIEW view_name AS 
	SELECT columns FROM tables [WHERE 
conditions]; 

#3. IsitabelPELANGGAN
sqlplus sys / oracle @EE @ \ u01 \ app \ oracle \ tugas - kambd \ customer.sql
INSERT INTO
    PELANGGAN (
        LOKASI_ID,
        PELANGGAN_ID,
        NAMA_LENGKAP,
        KOTA,
        PROPINSI,
        EMAIL,
        GENDER,
        STATUS,
        USERNAME
    )
VALUES
    (
        6415,
        201340,
        '969996970',
        'Jeffrey',
        'Antoine',
        '9938 Moreno St.',
        'Champagne',
        'SD',
        ' 43172',
        '4319071613',
        'JAntoine@iodmgpvjdzprccx.gov',
        '231146832737266',
        200000,
        'M',
        'A',
        '/T  if=<iWZhEUBC3)/M~6wa#DgR) 129_J68$rJ#f^j$"''y/g~,Iot3yhSr',
        TO_Date(
            '11/10/2003 02:22:07 PM',
            'MM/DD/YYYY HH:MI:SS AM'
        ),
        'VPD_CLERK1',
        '2'
    );
sqlplus DBSEC2 / secc1new sqlplus "DBSEC/secc$1new" #4. buat VIEW
    create
    or replace view c(
        LOKASI_ID,
        PELANGGAN_ID,
        NAMA_LENGKAP,
        KOTA,
        PROPINSI,
        EMAIL,
        GENDER,
        STATUS,
        USERNAME
    ) as
select
    LOKASI_ID,
    PELANGGAN_ID,
    NAMA_LENGKAP,
    KOTA,
    PROPINSI,
    EMAIL,
    GENDER,
    STATUS,
    USERNAME
from
    pelanggan
where
    USERNAME =(
        select
            SYS_CONTEXT('USERENV', 'SESSION_USER')
        from
            dual
    );