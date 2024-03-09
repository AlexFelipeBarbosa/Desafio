--> Limpar as tabelas, antes da Carga de Dados

USE Desafio

IF OBJECT_ID('Clickstream', 'U') IS NOT NULL
BEGIN
    TRUNCATE TABLE Clickstream;
END

IF OBJECT_ID('Devices', 'U') IS NOT NULL
BEGIN
    TRUNCATE TABLE Devices;
END


IF OBJECT_ID('MyList', 'U') IS NOT NULL
BEGIN
    TRUNCATE TABLE MyList;
END

IF OBJECT_ID('Ratings', 'U') IS NOT NULL
BEGIN
    TRUNCATE TABLE Ratings;
END

IF OBJECT_ID('SearchHistory', 'U') IS NOT NULL
BEGIN
    TRUNCATE TABLE SearchHistory;
END

IF OBJECT_ID('ViewingActivity', 'U') IS NOT NULL
BEGIN
    TRUNCATE TABLE ViewingActivity;
END