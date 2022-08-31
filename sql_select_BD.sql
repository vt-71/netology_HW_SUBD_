--название и год выхода альбомов, вышедших в 2018 году
SELECT name_album  FROM albums
WHERE year_album  = 2018

--название и продолжительность самого длительного трека;
SELECT name_track, time_track FROM tracks 
ORDER BY time_track DESC  
LIMIT 1

--название треков, продолжительность которых не менее 3,5 минуты;
SELECT name_track  FROM tracks
WHERE time_track > 3.5*60

--названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT name_compilation  FROM compilations 
WHERE year_compilation BETWEEN 2018 AND 2020


--исполнители, чье имя состоит из 1 слова;
SELECT name_artist  FROM artists
WHERE name_artist NOT LIKE '% %'

--название треков, которые содержат слово "мой"/"my"
SELECT name_track  FROM tracks
WHERE name_track LIKE '%My%' OR name_track LIKE '%Мой%'