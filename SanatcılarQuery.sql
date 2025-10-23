CREATE TABLE SANATCILAR
(
	Sanatci_ID INT IDENTITY (1, 1) NOT NULL,
	Adi VARCHAR (50) NOT NULL,
	Soyadi VARCHAR (50) NOT NULL,
	Aylik_Dinlenme INT NOT NULL,
	D_Tarihi DATE NOT NULL,

	PRIMARY KEY (Sanatci_ID),
);

INSERT INTO SANATCILAR (Adi, Soyadi, Aylik_Dinlenme, D_Tarihi) VALUES
('Sagopa', 'Kajmer', '2636512', '1978.08.17'),
('Erol', 'Evgin', '894120', '1947.04.16'),
('Ceza', '-', '2474881', '1976.12.31'),
('Kayra', '-', '1126073', '1985.08.09'),
('Gulden', 'Karabocek', '2622017', '1953.11.04'),
('Sezen', 'Aksu', '5638203', '1954.07.13'),
('Cem', 'Adrian', '3579471', '1980.11.30'),
('Cem', 'Karaca', '1867135', '1945.04.05'),
('Sebnem', 'Ferah', '1882316', '1972.04.12')

SELECT * FROM SANATCILAR