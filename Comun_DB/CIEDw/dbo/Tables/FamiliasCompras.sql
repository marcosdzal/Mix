CREATE TABLE [dbo].[FamiliasCompras] (
    [SubFam1]  NVARCHAR (50) NOT NULL,
    [Cod1]     NVARCHAR (1)  NOT NULL,
    [SubFam2]  NVARCHAR (50) NOT NULL,
    [Cod2]     NVARCHAR (2)  NOT NULL,
    [SubFam3]  NVARCHAR (50) NOT NULL,
    [Cod3]     NVARCHAR (2)  NOT NULL,
    [SubFam4]  NVARCHAR (50) NOT NULL,
    [Cod4]     NVARCHAR (2)  NOT NULL,
    [SubFam5]  NVARCHAR (50) NOT NULL,
    [Cod5]     NVARCHAR (2)  NOT NULL,
    [GrupoArt] NVARCHAR (9)  NOT NULL,
    CONSTRAINT [PK_FamiliasCompras] PRIMARY KEY CLUSTERED ([GrupoArt] ASC)
);

