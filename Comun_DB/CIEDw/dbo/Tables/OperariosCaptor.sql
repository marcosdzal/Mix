CREATE TABLE [dbo].[OperariosCaptor] (
    [Centro]                  NVARCHAR (10) NULL,
    [Operario]                NVARCHAR (10) NULL,
    [NombreOperario]          NVARCHAR (40) NULL,
    [Categoria]               NVARCHAR (10) NULL,
    [OpearioUnicoPuesto]      BIT           NULL,
    [OperarioExclusivoPuesto] BIT           NULL,
    [Borrado]                 BIT           NULL
);

