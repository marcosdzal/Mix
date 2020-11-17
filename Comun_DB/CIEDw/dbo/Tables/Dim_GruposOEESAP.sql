CREATE TABLE [dbo].[Dim_GruposOEESAP] (
    [Centro]        NVARCHAR (4)  NOT NULL,
    [GrupoOEE]      NVARCHAR (4)  NOT NULL,
    [DescrGrupoOEE] NVARCHAR (30) NULL,
    [EsNoOEE]       BIT           DEFAULT ((1)) NOT NULL,
    [borrado]       BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Dim_GruposOEESAP] PRIMARY KEY CLUSTERED ([Centro] ASC, [GrupoOEE] ASC)
);

