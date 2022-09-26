--количество исполнителей в каждом жанре
SELECT g.name_genre, COUNT(*) FROM styles  s
JOIN genres g USING(genre_id) 
GROUP BY g.name_genre;

--количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(*) FROM tracks t  
JOIN albums a  USING(album_id)
WHERE a.year_album BETWEEN 2019 AND 2020;

--средняя продолжительность треков по каждому альбому
SELECT a.year_album,  ROUND(AVG (t.time_track)) FROM tracks t  
JOIN albums a  USING(album_id)
GROUP BY a.year_album 
ORDER BY a.year_album;

--все исполнители, которые не выпустили альбомы в 2020 году
--SELECT DISTINCT ar.name_artist FROM artists ar
--JOIN discographies d  ON ar.artist_id  = d.artist_id  
--JOIN albums a ON d.album_id  = a.album_id 
--WHERE a.year_album != 2020

SELECT DISTINCT name_artist FROM artists 
WHERE name_artist  NOT IN (SELECT ar.name_artist FROM artists ar
JOIN discographies d  USING(artist_id)
JOIN albums a USING(album_id)
WHERE a.year_album = 2020)

--названия сборников, в которых присутствует конкретный исполнитель Kate
SELECT DISTINCT c.name_compilation  FROM compilations c 
JOIN collections col USING(compilation_id)
JOIN tracks t  USING(track_id)
JOIN albums a USING(album_id)
JOIN discographies d USING(album_id)
JOIN artists ar USING(artist_id)
WHERE ar.name_artist LIKE '%Kate%'
ORDER  BY c.name_compilation; 

--название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT a.name_album FROM artists ar 
JOIN styles s USING(artist_id)
JOIN genres g USING(genre_id)
JOIN discographies d USING(artist_id)
JOIN albums a USING(album_id)
GROUP BY a.name_album 
HAVING (count(*) > 1);

--наименование треков, которые не входят в сборники
SELECT t.name_track   FROM tracks t
left JOIN collections c  USING(track_id) 
WHERE c.track_id IS  NULL; 


--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT t.time_track, ar.name_artist FROM tracks t
JOIN albums a USING(album_id)
JOIN discographies d  USING(album_id)
JOIN artists ar USING(artist_id)
GROUP BY t.time_track, ar.name_artist 
HAVING t.time_track = (SELECT MIN(t.time_track) FROM tracks t);


--название альбомов, содержащих наименьшее количество треков
SELECT a.name_album, COUNT(t.track_id) track  FROM albums a  
LEFT JOIN tracks t  USING(album_id)
GROUP BY a.name_album 
HAVING COUNT(t.track_id) = (
SELECT COUNT(t.track_id) FROM albums a  
JOIN tracks t USING(album_id)
GROUP BY a.name_album  
ORDER BY count(t.track_id)
LIMIT 1)

