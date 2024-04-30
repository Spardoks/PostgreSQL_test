--1. Название и продолжительность самого длительного трека.
SELECT "название", "длительность" FROM MusicShop."Треки"
WHERE "длительность" = (SELECT MAX("длительность") FROM MusicShop."Треки");


--2. Название треков, продолжительность которых не менее 3,5 минут.
SELECT "название" FROM MusicShop."Треки"
WHERE "длительность" >= 60 * 3.5;


--3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT "название" FROM MusicShop."Сборники треков"
WHERE "год выпуска" BETWEEN 2018 AND 2020;


--4. Исполнители, чьё имя состоит из одного слова.
SELECT "имя" FROM MusicShop."Исполнители"
WHERE "имя" NOT LIKE '% %';


--5. Название треков, которые содержат слово «мой» или «my».
SELECT "название" FROM MusicShop."Треки"
WHERE "название" LIKE '%my%' OR "название" LIKE '%мой%';


-----------------------------------------------------------------------------------

--1. Количество исполнителей в каждом жанре.
SELECT "id жанра", COUNT(*) FROM MusicShop."Исполнители_Жанры"
GROUP BY "id жанра";


--2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(*) FROM MusicShop."Треки" AS tr
JOIN MusicShop."Альбомы" AS alb ON tr."id альбома" = alb."id"
WHERE  alb."год выпуска" BETWEEN 2019 AND 2020;


--3. Средняя продолжительность треков по каждому альбому.
SELECT alb."название", AVG(tr."длительность") FROM MusicShop."Альбомы" AS alb
JOIN MusicShop."Треки" AS tr ON alb."id" = tr."id альбома"
GROUP BY alb."название";


--4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT gr."имя" FROM MusicShop."Исполнители" AS gr
JOIN MusicShop."Исполнители_Альбомы" AS gr_alb ON gr."id" = gr_alb."id исполнителя"
JOIN MusicShop."Альбомы" AS alb ON gr_alb."id альбома" = alb."id"
WHERE alb."год выпуска" != 2020
GROUP BY  gr."имя";


--5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT trac_set."название" FROM MusicShop."Сборники треков" as trac_set
JOIN MusicShop."Треки_Сборники" AS trac_set_trac ON trac_set."id" = trac_set_trac."id сборника"
JOIN MusicShop."Треки" AS trac ON trac_set_trac."id трека" = trac."id"
JOIN MusicShop."Альбомы" AS alb ON trac."id альбома" = alb."id"
JOIN MusicShop."Исполнители_Альбомы" AS gr_alb ON alb."id" = gr_alb."id альбома"
JOIN MusicShop."Исполнители" AS gr ON gr_alb."id исполнителя" = gr."id"
WHERE gr."имя" = 'Группа 2';