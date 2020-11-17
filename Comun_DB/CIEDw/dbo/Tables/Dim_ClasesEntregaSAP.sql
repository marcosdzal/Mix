CREATE TABLE [dbo].[Dim_ClasesEntregaSAP] (
    [Centro]            NVARCHAR (4)  NOT NULL,
    [ClaseEntrega]      NVARCHAR (4)  NOT NULL,
    [DescrClaseEntrega] NVARCHAR (20) NULL,
    CONSTRAINT [PK_Dim_ClasesEntregaSAP] PRIMARY KEY CLUSTERED ([Centro] ASC, [ClaseEntrega] ASC)
);

