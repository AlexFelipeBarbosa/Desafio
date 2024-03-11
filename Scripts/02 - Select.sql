/*	
	Alex Felipe Barbosa - 09/03/2024
	Desafio Técnico - Analista de Dados MIS


	02 - Selecionar a quantidade de aparelhos conectados no Netflix dos últimos 7 anos por Perfil

*/


USE Desafio
GO

SELECT [Profile Name],
       COUNT(Esn) AS QtdeAparelhosConectados
FROM Devices
WHERE CONVERT(DATETIME, [Acct Last Playback Date]) >= DATEADD(YEAR, -7, GETDATE())
GROUP BY [Profile Name];