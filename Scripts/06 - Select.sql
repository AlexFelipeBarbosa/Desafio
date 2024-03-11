/*	
	Alex Felipe Barbosa - 09/03/2024
	Desafio Técnico - Analista de Dados MIS


	06 - Desenvolver um Pivot Dinamico que traz todas as series/filmes que foram assistidos, agrupando por Perfil, Titulo, Quantidade de Acessos,
		 Tempo Total da Sessão e nas colunas dinamicas do Pivot trazer a soma do tempo total assistido de cada titulo por Ano.

	Obs: Calculado em Segundos

*/


USE Desafio
GO

--> 6 - Pivot Dinamico
DECLARE @Anos			AS NVARCHAR(MAX);
DECLARE @PivotColunas	AS NVARCHAR(MAX);
DECLARE @SQL			AS NVARCHAR(MAX);

--> Buscando o Anos 
SELECT @Anos = COALESCE(@Anos + ', ', '') + QUOTENAME(YEAR([Start Time]))
FROM ViewingActivity
GROUP BY YEAR([Start Time])
ORDER BY YEAR([Start Time]);


--> Colunas Dinamicas por Ano
SET @PivotColunas = STUFF((
							 SELECT ', SUM(' + QUOTENAME(YEAR([Start Time])) + ') AS ' + QUOTENAME(YEAR([Start Time]))
							 FROM ViewingActivity
							 GROUP BY YEAR([Start Time])
							 ORDER BY YEAR([Start Time])
							 FOR XML PATH('')),1,2,'');


--> Consulta Dinâmica
SET @SQL
    = N'
			SELECT *
			FROM (
				SELECT
					[Profile Name],
					Title,
					COUNT(*) AS QuantidadeDeAcessos,
					SUM(DATEDIFF(SECOND, ''00:00:00'', CONVERT(TIME, Duration))) as TempoTotalSessao,
					SUM(DATEDIFF(SECOND, ''00:00:00'', CONVERT(TIME, Duration))) as TempoTotal,
					YEAR([Start Time]) AS Ano
				FROM
					ViewingActivity
				GROUP BY
					[Profile Name], Title, YEAR([Start Time])
			) AS Dados
			PIVOT (
			   SUM(TempoTotalSessao)
				FOR Ano IN (' + @Anos + ')
			) AS PivotTable';

print @SQL

--> Executando a Consulta Dinâmica 
EXEC sp_executesql @SQL;

