/*	
	Alex Felipe Barbosa - 09/03/2024
	Desafio Técnico - Analista de Dados MIS


	03 - Selecionar os titulos de series/filmes que foram colocados na "Minha Lista" por mais de um Perfil

*/


USE Desafio
GO

SELECT [Title Name]
FROM MyList
GROUP BY [Title Name]
HAVING COUNT(DISTINCT [Profile Name]) > 1
ORDER BY [Title Name] DESC