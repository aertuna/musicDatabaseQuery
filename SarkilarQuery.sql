CREATE TABLE SARKILAR
(
	Sarki_ID INT IDENTITY (1, 1) NOT NULL,
	Adi VARCHAR (50) NOT NULL,
	Cikis_Tarihi DATE NOT NULL,
	Sure VARCHAR (5) NOT NULL,
	Album_ID INT NOT NULL,
	Tur_ID INT NOT NULL,

	PRIMARY KEY (Sarki_ID),

	FOREIGN KEY (Album_ID) REFERENCES ALBUMLER(Album_ID),
	FOREIGN KEY (Tur_ID) REFERENCES TURLER(Tur_ID),
);

INSERT INTO SARKILAR (Adi, Cikis_Tarihi, Sure, Album_ID, Tur_ID) VALUES
('Karikatur Komedya', '2003.06.06', '03:56', 1, 1),
('Kor Savasci', '2003.06.06', '03:04', 1, 1),
('Sevdan Olmasa', '2016.05.27', '04:12', 2, 2),
('Bir De Bana Sor', '2016.05.27', '03:35', 2, 3),
('Savas Cocuklari', '2002.06.24', '03:15', 3, 1),
('Dejavu', '2002.06.24', '02:21', 3, 1),
('Dursa Dunya', '2023.10.20', '03:09', 4, 1),
('Katil Gramofon', '2023.10.20', '03:21', 4, 1),
('Vasiyet', '2005.08.20', '03:24', 5, 1),
('Terapi', '2005.08.20', '04:34', 5, 1),
('Sen Evlisin', '1984.02.06', '03:40', 6, 3),
('Tek Sevenim Sen Olsan', '1984.02.06', '05:09', 6, 3),
('Seni Kimler Aldi', '1991.07.16', '03:28', 7, 3),
('Vazgectim', '1991.07.16', '05:09', 7, 3),
('Her Seyi Yak', '1991.07.16', '05:14', 7, 2),
('Vesselam', '2008.03.13', '04:36', 8, 1),
('Ben Husrana Komsuyum', '2008.03.13', '03:59', 8, 1),
('Bir Kulac Daha Atsam Karadayim', '2008.03.13', '03:56', 8, 1),
('Ben Seni Cok Sevdim', '2013.09.03', '03:55', 9, 3),
('Biz Senle', '2013.09.03', '04:40', 9, 4),
('Tek Kisilik Ask', '2013.09.03', '07:28', 9, 3),
('Yarim Porsiyon Aydinlik', '1987.01.30', '02:48', 10, 5),
('Cok Yorgunum', '1987.01.30', '03:44', 10, 5),
('Ceviz Agaci', '1987.01.30', '05:49', 10, 5),
('Hep Kahir', '1987.01.30', '05:21', 10, 5),
('Geri Don', '1984.09.06', '04:19', 11, 3),
('Tukenecegiz', '1984.09.06', '04:19', 11, 3),
('Haydi Gel Benimle Ol', '1984.09.06', '04:31', 11, 3),
('Namus Belasi', '1975.10.01', '04:27', 12, 5),
('Adsiz', '1975.10.01', '03:40', 12, 5),
('Kendim Ettim Kendim Buldum', '1975.10.01', '03:57', 12, 5),
('Cakil Taslari', '2007.07.05', '04:47', 13, 6),
('Hoscakal', '2007.07.05', '04:45', 13, 6),
('Kalbim Mezar', '2013.05.09', '04:39', 14, 6),
('Yarim', '2013.05.09', '05:28', 14, 6)

SELECT * FROM SARKILAR