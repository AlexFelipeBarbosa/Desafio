/*	
	Alex Felipe Barbosa - 09/03/2024
	Desafio Técnico - Analista de Dados MIS


	05 - Selecionar todos históricos de busca do Netflix que foram feitos nos Perfis ('Moises','Victor','Rafael','Marcio'),
		 e que o resultado da pesquisa seja diferente de branco, trazer agrupando por: (resultado da consulta digitada, quantidade de consultas,
		 quantidade de perfis distintos que fizeram a busca) e trazer a quantidade de pesquisas por Perfil ('Moises','Victor','Rafael','Marcio')
		 em cada coluna.

*/


USE Desafio
GO

SELECT 
    [Displayed Name],
    COUNT(*) AS QuantidadeDeConsultas,
    COUNT(DISTINCT [Profile Name]) AS PerfisDistintos,
    SUM(CASE WHEN [Profile Name] = 'Moises' THEN 1 ELSE 0 END) AS ConsultasMoises,
    SUM(CASE WHEN [Profile Name] = 'Victor' THEN 1 ELSE 0 END) AS ConsultasVictor,
    SUM(CASE WHEN [Profile Name] = 'Rafael' THEN 1 ELSE 0 END) AS ConsultasRafael,
    SUM(CASE WHEN [Profile Name] = 'Marcio' THEN 1 ELSE 0 END) AS ConsultasMarcio
FROM 
    SearchHistory
WHERE 
     [Profile Name] IN ('Moises', 'Victor', 'Rafael', 'Marcio')
	 AND [Displayed Name] <> ''
GROUP BY 
    [Displayed Name];