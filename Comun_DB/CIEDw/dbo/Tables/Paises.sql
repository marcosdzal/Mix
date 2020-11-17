CREATE TABLE [dbo].[Paises] (
    [Pais]       NVARCHAR (3)  NOT NULL,
    [NombrePais] NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED ([Pais] ASC)
);

