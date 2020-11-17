
CREATE PROCEDURE [dbo].[sp_VariablesPlant] 
	-- Add the parameters for the stored procedure here
	@Plant Varchar(15)	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Retorna valores para asignación de variables 
	SELECT TOP (1) *
    FROM SAPPlants
    WHERE (Active = 1) AND (Plant = @Plant) 
    ORDER BY IdConnection;
END