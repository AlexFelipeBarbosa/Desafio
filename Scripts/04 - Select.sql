/*	
	Alex Felipe Barbosa - 09/03/2024
	Desafio Técnico - Analista de Dados MIS


	04 - Selecionar a classificação dos titulos das series/filmes que tiveram a marcação de "Polegar para cima" do Perfil "Victor", 
		 trazer somente o Titulo, Modelo do Aparelho e a Data/Hora da classificação e ordenar da primeira Classificação a ultima.

*/


USE Desafio
GO

SELECT [Title Name],
       [Device Model],
       [Event Utc Ts]
FROM Ratings
WHERE [Profile Name] = 'Victor'
      AND [Thumbs Value] = 2
ORDER BY [Event Utc Ts]