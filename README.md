# 🎵 Music Database Query Project

A simple SQL-based project designed to demonstrate database creation, table relationships, and data querying using a **music database**.  
This project was developed as a **school assignment** to practice SQL fundamentals such as table design, data insertion, relationships, and selection queries.

---

## 📘 Overview

The **Music Database** represents a small-scale version of a music streaming platform, including entities such as:
- **Artists (Sanatçılar)**
- **Albums (Albümler)**
- **Songs (Şarkılar)**
- **Genres (Türler)**
- **Users (Kullanıcılar)**

Each table is interconnected through **primary and foreign keys**, allowing complex queries to be performed easily.

---

## 🧩 Database Structure

### 1. `SANATCILAR` (Artists)
Contains information about artists, their birth dates, and monthly listener counts.

| Column | Type | Description |
|--------|------|-------------|
| `Sanatci_ID` | INT | Unique artist ID (Primary Key) |
| `Adi` | VARCHAR(50) | Artist’s first name |
| `Soyadi` | VARCHAR(50) | Artist’s last name |
| `Aylik_Dinlenme` | INT | Monthly listener count |
| `D_Tarihi` | DATE | Date of birth |

---

### 2. `ALBUMLER` (Albums)
Stores data about music albums and their release dates.

| Column | Type | Description |
|--------|------|-------------|
| `Album_ID` | INT | Unique album ID (Primary Key) |
| `Album_Adi` | VARCHAR(50) | Album name |
| `Cikis_Tarihi` | DATE | Release date |

---

### 3. `TURLER` (Genres)
Defines the musical genres.

| Column | Type | Description |
|--------|------|-------------|
| `Tur_ID` | INT | Unique genre ID (Primary Key) |
| `Tur_Adi` | VARCHAR(50) | Genre name |

---

### 4. `SARKILAR` (Songs)
Contains songs along with their album and genre references.

| Column | Type | Description |
|--------|------|-------------|
| `Sarki_ID` | INT | Unique song ID (Primary Key) |
| `Adi` | VARCHAR(50) | Song title |
| `Cikis_Tarihi` | DATE | Release date |
| `Sure` | VARCHAR(5) | Duration (mm:ss) |
| `Album_ID` | INT | Foreign key referencing `ALBUMLER` |
| `Tur_ID` | INT | Foreign key referencing `TURLER` |

---

### 5. `KULLANICILAR` (Users)
Stores basic user information such as names, gender, birth date, and email.

| Column | Type | Description |
|--------|------|-------------|
| `Kullanici_ID` | INT | Unique user ID (Primary Key) |
| `Adi` | VARCHAR(30) | User’s first name |
| `Soyadi` | VARCHAR(30) | User’s last name |
| `Cinsiyet` | CHAR | Gender (E = Male, K = Female) |
| `D_Tarihi` | DATE | Date of birth |
| `Mail` | NVARCHAR(50) | Email address |

---

## 🔗 Relationships

- Each **song** belongs to **one album** and **one genre**.  
- Albums are independent entities that group multiple songs.  
- Artists are not directly linked in this version, but could be associated in future iterations (e.g., via an `Artist_ID` in `SARKILAR`).

---

## ⚙️ How to Use

1. Open your preferred SQL environment (e.g., **Microsoft SQL Server**, **MySQL Workbench**, or **Azure Data Studio**).
2. Run the scripts in the following order to avoid dependency issues:
   1. `AlbumlerQuery.sql`
   2. `TurlerQuery.sql`
   3. `SanatçılarQuery.sql`
   4. `SarkilarQuery.sql`
   5. `KullanicilarQuery.sql`
3. After executing all scripts, you can run:
   ```sql
   SELECT * FROM SARKILAR;
to view the populated song table.

📊 Example Queries

-- 1. List all songs with their album and genre
SELECT S.Adı AS Song, A.Album_Adi AS Album, T.Tur_Adi AS Genre
FROM SARKILAR S
JOIN ALBUMLER A ON S.Album_ID = A.Album_ID
JOIN TURLER T ON S.Tur_ID = T.Tur_ID;

-- 2. Find all songs longer than 4 minutes
SELECT Adi, Sure FROM SARKILAR WHERE Sure > '04:00';

-- 3. Display users born after 2000
SELECT Adi, Soyadi, D_Tarihi FROM KULLANICILAR WHERE D_Tarihi > '2000-01-01';
