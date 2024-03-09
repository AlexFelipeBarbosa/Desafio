/*	
	Alex Felipe Barbosa - 09/03/2024
	Desafio T�cnico - Analista de Dados MIS


	04 - Selecionar a classifica��o dos titulos das series/filmes que tiveram a marca��o de "Polegar para cima" do Perfil "Victor", 
		 trazer somente o Titulo, Modelo do Aparelho e a Data/Hora da classifica��o e ordenar da primeira Classifica��o a ultima.

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