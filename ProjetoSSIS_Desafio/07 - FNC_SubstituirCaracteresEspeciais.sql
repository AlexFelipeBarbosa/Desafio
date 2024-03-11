/*	
	Alex Felipe Barbosa - 10/03/2024
	Desafio T�cnico - Analista de Dados MIS


	Fun��o criada para Substituir alguns Caracteres Especiais

*/

USE Desafio
GO

ALTER FUNCTION dbo.FNC_SubstituirCaracteresEspeciais (@texto VARCHAR(200))
RETURNS VARCHAR(200)
AS
BEGIN

	SET @texto = REPLACE(@texto, N'ç', N'�');
    SET @texto = REPLACE(@texto, N'ã', N'�');
	SET @texto = REPLACE(@texto, N'ó', N'�');
	SET @texto = REPLACE(@texto, N'é', N'�');
	SET @texto = REPLACE(@texto, N'á', N'�');
	SET @texto = REPLACE(@texto, N'�-�', N'�');	
	SET @texto = REPLACE(@texto, N'ê���', N'e');	

    RETURN @texto;
END;
GO