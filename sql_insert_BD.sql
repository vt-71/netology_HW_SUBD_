INSERT INTO albums (name_album, year_album)
VALUES ('Calm grape', 2018), ('Crazy cherry', 2015), ('Curious plum', 2020), ('Funny orange',  2018), ('Glad dates',  2011),
       ('Had peach',  2016), ('Happy berry',  2019), ('My cherry',  2015), ('Pensive mango',  2019), ('Sad peach',  2016), ('Step',  2010);



INSERT INTO artists (name_artist)
VALUES ('Ann'), ('Bill'), ('John Idol'), ('Kate'), ('Marta'), ('Mary'), ('Peter First'), ('Steve Martin');


INSERT INTO compilations (name_compilation, year_compilation)
VALUES ('Fruits 2011', 2018), ('Fruits 2012', 2012), ('Fruits 2016', 2016), ('Fruits 2017', 2017),
       ('Fruits 2018', 2018), ('Fruits 2019', 2019), ('Fruits 2020', 2020), ('Fruits 2021', 2021);


INSERT INTO genres  (name_genre)
VALUES ('dubstep'), ('folk'), ('metal'), ('pop'), ('rock'); 


INSERT INTO tracks  (name_track, time_track, album_id)
VALUES ('2 Step Chase', 221, 21), ('9+9', 384, 22), ('Audio Santo', 237, 17), ('Axis Flip', 197, 19), ('Banana Banji', 173, 20),
       ('Closing The', 291, 16), ('Confusion is Next', 118, 23), ('Cream', 193, 16), ('Digital live', 241, 25), ('Dramatic Combo', 343, 20),
       ('Duck And Cover', 228, 20), ('Generator Man', 201, 25), ('Ipso Fvcto', 294, 24), ('Mexicosed Brains', 197, 20), ('My brother', 321, 21),
       ('My Dear Medical Assurance', 182, 22), ('My People', 342, 16), ('New Age Surf', 183, 16), ('No Window', 120, 26), ('Notes Junky', 371, 22),
	   ('Overend Show', 238, 18), ('Phone The Lab', 332, 26), ('Photos Of Ghosts', 158, 26), ('Play This Tune', 261, 19), ('Smooth Hound', 134, 16),
       ('Soda', 102, 24), ('Sonic Algebra', 289, 18), ('Trylon And Perisphere', 312, 18), ('Spooky Loops', 213, 19), ('Stiff Manure', 291, 23),
       ('We Love Radio', 102, 22), ('Speaker Bite Me', 271, 22), ('Too Keen', 132, 24), ('Sunday on Monday', 213, 16);


INSERT INTO collections (track_id, compilation_id)
VALUES (1, 23), (2, 25), (3, 21), (4, 24), (7, 21), (9, 22), (10, 19), (11, 19), (12, 22), (13, 24), (14, 23), (15, 22), (17, 24), (18, 24),
       (19, 20), (20, 25), (21, 26), (22, 21), (23, 20), (24, 24), (25, 24), (26, 25), (27, 26), (28, 26), (29, 22), (30, 21), (31, 25),
       (32, 25), (33, 25), (34, 25);

INSERT INTO styles (artist_id, genre_id)
VALUES (10, 15), (11, 15), (12, 14), (13, 14), (14, 13), (15, 12), (16, 13), (16, 15), (9, 11);

INSERT INTO discographies  (artist_id, album_id)
VALUES (10, 21), (10, 25), (11, 24), (12, 17), (12, 20), (13, 23), (13, 26), (14, 22), (15, 18), (16, 19), (9, 16);


















       
       












