INSERT INTO MusicShop."Исполнители" ("id", "имя") VALUES (1, 'Группа');
INSERT INTO MusicShop."Исполнители" ("id", "имя") VALUES (2, 'Группа 2');
INSERT INTO MusicShop."Исполнители" ("id", "имя") VALUES (3, 'Группа 3');
INSERT INTO MusicShop."Исполнители" ("id", "имя") VALUES (4, 'Группа 4');


INSERT INTO MusicShop."Жанры" ("id", "название") VALUES (1, 'Рок');
INSERT INTO MusicShop."Жанры" ("id", "название") VALUES (2, 'Поп');
INSERT INTO MusicShop."Жанры" ("id", "название") VALUES (3, 'Электронная музыка');


INSERT INTO MusicShop."Исполнители_Жанры" ("id исполнителя", "id жанра") VALUES (1, 1);
INSERT INTO MusicShop."Исполнители_Жанры" ("id исполнителя", "id жанра") VALUES (2, 1);
INSERT INTO MusicShop."Исполнители_Жанры" ("id исполнителя", "id жанра") VALUES (3, 2);
INSERT INTO MusicShop."Исполнители_Жанры" ("id исполнителя", "id жанра") VALUES (4, 3);


INSERT INTO MusicShop."Альбомы" ("id", "название", "год выпуска") VALUES (1, 'Первый альбом', 2018);
INSERT INTO MusicShop."Альбомы" ("id", "название", "год выпуска") VALUES (2, 'Второй альбом', 2020);
INSERT INTO MusicShop."Альбомы" ("id", "название", "год выпуска") VALUES (3, 'Третий альбом', 2022);


INSERT INTO MusicShop."Исполнители_Альбомы" ("id исполнителя", "id альбома") VALUES (1, 1);
INSERT INTO MusicShop."Исполнители_Альбомы" ("id исполнителя", "id альбома") VALUES (1, 3);
INSERT INTO MusicShop."Исполнители_Альбомы" ("id исполнителя", "id альбома") VALUES (2, 1);
INSERT INTO MusicShop."Исполнители_Альбомы" ("id исполнителя", "id альбома") VALUES (3, 2);
INSERT INTO MusicShop."Исполнители_Альбомы" ("id исполнителя", "id альбома") VALUES (4, 1);


INSERT INTO MusicShop."Треки" ("id", "название", "длительность", "id альбома") VALUES (1, 'Трек 1', 60, 1);
INSERT INTO MusicShop."Треки" ("id", "название", "длительность", "id альбома") VALUES (2, 'Трек 2', 30, 2);
INSERT INTO MusicShop."Треки" ("id", "название", "длительность", "id альбома") VALUES (3, 'Трек 3', 95, 2);
INSERT INTO MusicShop."Треки" ("id", "название", "длительность", "id альбома") VALUES (4, 'Трек 4', 615, 3);
INSERT INTO MusicShop."Треки" ("id", "название", "длительность", "id альбома") VALUES (5, 'Трек 5 мой', 314, 3);
INSERT INTO MusicShop."Треки" ("id", "название", "длительность", "id альбома") VALUES (6, 'Трек 6 my', 268, 3);


INSERT INTO MusicShop."Сборники треков" ("id", "название", "год выпуска") VALUES (1, 'Сборник 1', 2018);
INSERT INTO MusicShop."Сборники треков" ("id", "название", "год выпуска") VALUES (2, 'Сборник 2', 2020);
INSERT INTO MusicShop."Сборники треков" ("id", "название", "год выпуска") VALUES (3, 'Сборник 3', 2023);
INSERT INTO MusicShop."Сборники треков" ("id", "название", "год выпуска") VALUES (4, 'Сборник 4', 2024);


INSERT INTO MusicShop."Треки_Сборники" ("id трека", "id сборника") VALUES (1, 1);
INSERT INTO MusicShop."Треки_Сборники" ("id трека", "id сборника") VALUES (2, 2);
INSERT INTO MusicShop."Треки_Сборники" ("id трека", "id сборника") VALUES (3, 2);
INSERT INTO MusicShop."Треки_Сборники" ("id трека", "id сборника") VALUES (4, 3);
INSERT INTO MusicShop."Треки_Сборники" ("id трека", "id сборника") VALUES (5, 3);
INSERT INTO MusicShop."Треки_Сборники" ("id трека", "id сборника") VALUES (6, 4);


