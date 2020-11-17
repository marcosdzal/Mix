CREATE TABLE [dbo].[Dim_Paises] (
    [NombrePais] NVARCHAR (100) NOT NULL,
    [CodAlfa2]   NVARCHAR (2)   NOT NULL,
    [CodAlfa3]   NVARCHAR (3)   NOT NULL,
    [CodNum]     INT            NOT NULL,
    CONSTRAINT [PK_Dim_Paises] PRIMARY KEY CLUSTERED ([CodAlfa3] ASC)
);

