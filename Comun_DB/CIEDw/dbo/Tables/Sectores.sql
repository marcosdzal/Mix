CREATE TABLE [dbo].[Sectores] (
    [Sector]       NVARCHAR (2)   NOT NULL,
    [Denominacion] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Sectores] PRIMARY KEY CLUSTERED ([Sector] ASC)
);

