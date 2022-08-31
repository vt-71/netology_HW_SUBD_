CREATE TABLE IF NOT EXISTS genres (
  genre_id SERIAL PRIMARY KEY,
  name_genre VARCHAR(60) UNIQUE NOT NULL);

CREATE TABLE IF NOT EXISTS artists (
  artist_id SERIAL PRIMARY KEY,
  name_artist VARCHAR(20) UNIQUE NOT NULL);

CREATE TABLE IF NOT EXISTS styles (
  artist_id INTEGER NOT NULL REFERENCES artists (artist_id),
  genre_id INTEGER NOT NULL REFERENCES genres (genre_id),
  CONSTRAINT pk PRIMARY KEY (artist_id, genre_id));

CREATE TABLE IF NOT EXISTS albums(
  album_id SERIAL PRIMARY KEY,
  name_album VARCHAR(60) UNIQUE NOT NULL,
  year_album INTEGER NOT NULL CHECK (year_album > 1900));


CREATE TABLE IF NOT EXISTS discographies(
  artist_id INTEGER NOT NULL REFERENCES artists (artist_id),
  album_id INTEGER NOT NULL REFERENCES albums (album_id),
  CONSTRAINT pk_1 PRIMARY KEY (artist_id, album_id));

CREATE TABLE IF NOT EXISTS tracks(
  track_id SERIAL PRIMARY KEY,
  name_track VARCHAR(60) UNIQUE NOT NULL,
  time_track INTEGER NOT NULL,
  album_id INTEGER NOT NULL REFERENCES albums (album_id));

CREATE TABLE IF NOT EXISTS compilations (
  compilation_id SERIAL PRIMARY KEY,
  name_compilation VARCHAR(60) UNIQUE NOT NULL,
  year_compilation INTEGER NOT NULL CHECK (year_compilation > 1900));

CREATE TABLE IF NOT EXISTS collections (
  track_id INTEGER NOT NULL REFERENCES tracks (track_id),
  compilation_id INTEGER NOT NULL REFERENCES compilations (compilation_id),
  CONSTRAINT pk_2 PRIMARY KEY (track_id, compilation_id));

