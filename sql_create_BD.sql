CREATE TABLE IF NOT EXISTS Genres (
  id SERIAL PRIMARY KEY,
  name_genre VARCHAR(60) UNIQUE NOT NULL);

CREATE TABLE IF NOT EXISTS Artists (
  id SERIAL PRIMARY KEY,
  name_artist VARCHAR(20) UNIQUE NOT NULL);

CREATE TABLE IF NOT EXISTS Genres_Artists (
  artist_id INTEGER NOT NULL REFERENCES Artists (id),
  genre_id INTEGER NOT NULL REFERENCES Genres (id),
  CONSTRAINT pk PRIMARY KEY (artist_id, genre_id));

CREATE TABLE IF NOT EXISTS Albums(
  id SERIAL PRIMARY KEY,
  name_album VARCHAR(60) UNIQUE NOT NULL,
  year_album INTEGER NOT NULL,
--  CHECK (YEAR > 1900),
  artist VARCHAR(60) UNIQUE NOT NULL);

CREATE TABLE IF NOT EXISTS Albums_Artists(
  artist_id INTEGER NOT NULL REFERENCES Artists (id),
  album_id INTEGER NOT NULL REFERENCES Albums (id),
  CONSTRAINT pk_1 PRIMARY KEY (artist_id, album_id));

CREATE TABLE IF NOT EXISTS Tracks(
  id SERIAL PRIMARY KEY,
  name_track VARCHAR(60) UNIQUE NOT NULL,
  time_track TIME NOT NULL,
  album_id INTEGER NOT NULL REFERENCES Albums (id));

CREATE TABLE IF NOT EXISTS Compilations (
  id SERIAL PRIMARY KEY,
  name_compilation VARCHAR(60) UNIQUE NOT NULL,
  year_compilation INTEGER NOT NULL);

CREATE TABLE IF NOT EXISTS Tracks_Compilations (
  track_id INTEGER NOT NULL REFERENCES Tracks (id),
  compilation_id INTEGER NOT NULL REFERENCES Compilations (id),
  CONSTRAINT pk_2 PRIMARY KEY (track_id, compilation_id));

