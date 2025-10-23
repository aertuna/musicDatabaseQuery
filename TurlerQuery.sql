CREATE TABLE TURLER
(
	Tur_ID INT IDENTITY (1, 1) NOT NULL,
	Tur_Adi VARCHAR (50)

	PRIMARY KEY (Tur_ID)
);

INSERT INTO TURLER (Tur_Adi) VALUES
('Turkce Rap'),
('Turkce Pop'),
('Arabesk'),
('Caz'),
('Anadolu Rock'),
('Rock')

SELECT * FROM TURLER