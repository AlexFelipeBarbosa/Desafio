/*	
	Alex Felipe Barbosa - 09/03/2024
	Desafio T�cnico - Analista de Dados MIS


	01 - Selecionar o tipo de aparelho que tiveram maiores a��es executadas no perfil "MOISES"

*/

USE Desafio
GO

SELECT TOP 1
    Source
FROM Clickstream
WHERE [Profile Name] = 'MOISES'
GROUP BY Source
ORDER BY COUNT(*) DESC;