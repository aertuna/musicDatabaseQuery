CREATE DATABASE MuzikPlatformu

CREATE TABLE ALBUMLER
(
	Album_ID INT IDENTITY (1, 1) NOT NULL,
	Album_Adi VARCHAR (50) NOT NULL,
	Cikis_Tarihi DATE NOT NULL,
	PRIMARY KEY (Album_ID)
);

INSERT INTO ALBUMLER (Album_Adi, Cikis_Tarihi) VALUES
('Bir Pesimistin Goz Yaslari', '2003.06.06'),
('Altin Duetler', '2016.05.27'),
('Medcezir', '2002.06.24'),
('Omrumun Son Guzel Gunleri', '2023.10.20'),
('Romantizma', '2005.08.20'),
('Agliyorsam Yasiyorum', '1984.02.06'),
('Gulumse', '1991.07.16'),
('Kotu Insanlari Tanima Senesi', '2008.03.13'),
('Seker Prens ve Tuz Kral', '2013.09.03'),
('Merhaba Gencler', '1987.01.30'),
('Sen Aglama', '1984.09.06'),
('Nem Kaldi?', '1975.10.01'),
('Cam Kiriklari', '2005.07.05'),
('OD', '2013.05.09')

SELECT * FROM ALBUMLER