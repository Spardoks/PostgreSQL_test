CREATE SCHEMA IF NOT EXISTS MusicShop AUTHORIZATION postgres;

CREATE TABLE IF NOT EXISTS MusicShop."Исполнители" (
  "id" SERIAL PRIMARY KEY, 
  "имя" VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS MusicShop."Альбомы" (
  "id" SERIAL PRIMARY KEY, 
  "название" VARCHAR(40) NOT NULL, 
  "год выпуска" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS MusicShop."Жанры" (
  "id" SERIAL PRIMARY KEY, 
  "название" VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS MusicShop."Треки" (
  "id" SERIAL PRIMARY KEY, 
  "название" VARCHAR(40) NOT NULL, 
  "длительность" INTEGER NOT NULL, 
  "id альбома" INTEGER NOT NULL REFERENCES MusicShop."Альбомы"(id)
);

CREATE TABLE IF NOT EXISTS MusicShop."Сборники треков" (
  "id" SERIAL PRIMARY KEY, 
  "название" VARCHAR(40) NOT NULL, 
  "год выпуска" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS MusicShop."Исполнители_Альбомы" (
  "id исполнителя" INTEGER REFERENCES MusicShop."Исполнители"(id), 
  "id альбома" INTEGER REFERENCES MusicShop."Альбомы"(id), 
  CONSTRAINT pk_artist_album PRIMARY KEY (
    "id исполнителя", "id альбома"
  )
);

CREATE TABLE IF NOT EXISTS MusicShop."Исполнители_Жанры" (
  "id исполнителя" INTEGER REFERENCES MusicShop."Исполнители"(id), 
  "id жанра" INTEGER REFERENCES MusicShop."Жанры"(id), 
  CONSTRAINT pk_artist_genre PRIMARY KEY (
    "id исполнителя", "id жанра"
  )
);

CREATE TABLE IF NOT EXISTS MusicShop."Треки_Сборники" (
  "id трека" INTEGER REFERENCES MusicShop."Треки"(id), 
  "id сборника" INTEGER REFERENCES MusicShop."Сборники треков"(id), 
  CONSTRAINT pk_track_collection PRIMARY KEY (
    "id трека", "id сборника"
  )
);
