/*	
	Alex Felipe Barbosa - 10/03/2024
	Desafio Técnico - Analista de Dados MIS


	Função criada para Substituir alguns Caracteres Especiais

*/

USE Desafio
GO

ALTER FUNCTION dbo.FNC_SubstituirCaracteresEspeciais (@texto VARCHAR(200))
RETURNS VARCHAR(200)
AS
BEGIN

	SET @texto = REPLACE(@texto, N'Ã§', N'ç');
    SET @texto = REPLACE(@texto, N'Ã£', N'ã');
	SET @texto = REPLACE(@texto, N'Ã³', N'ó');
	SET @texto = REPLACE(@texto, N'Ã©', N'é');
	SET @texto = REPLACE(@texto, N'Ã¡', N'á');
	SET @texto = REPLACE(@texto, N'Ã-­', N'í');	
	SET @texto = REPLACE(@texto, N'Ãª­­­', N'e');	

    RETURN @texto;
END;
GO