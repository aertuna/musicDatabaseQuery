CREATE TABLE KULLANICILAR
(
	Kullanici_ID INT IDENTITY (1, 1) NOT NULL,
	Adi VARCHAR (30) NOT NULL,
	Soyadi VARCHAR (30) NOT NULL,
	Cinsiyet CHAR NOT NULL,
	D_Tarihi DATE NOT NULL,
	Mail NVARCHAR (50) NOT NULL,

	PRIMARY KEY (Kullanici_ID),
);

INSERT INTO KULLANICILAR (Adi, Soyadi, Cinsiyet, D_Tarihi, Mail) VALUES
('Alperen', 'ERTUNA', 'E', '2003.03.17', 'alperenertuna41@gmail.com'),
('Sevval', 'KURUTAS', 'K', '2002.02.15', 'sevval-kurutas@hotmail.com'),
('Alpgiray Hamza', 'DEMIR', 'E', '2002.03.19', 'hamzademir.518@gmail.com'),
('Ceren', 'DEMIREL', 'K', '2004.01.19', 'cerendmrl1903@gmail.com')

SELECT * FROM KULLANICILAR