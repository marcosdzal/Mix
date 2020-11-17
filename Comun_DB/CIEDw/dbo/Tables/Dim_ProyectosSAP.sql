CREATE TABLE [dbo].[Dim_ProyectosSAP] (
    [Centro]       NVARCHAR (4)  NOT NULL,
    [Proyecto]     NVARCHAR (3)  NOT NULL,
    [Denominacion] NVARCHAR (40) NULL,
    CONSTRAINT [PK_Dim_ProyectosSAP] PRIMARY KEY CLUSTERED ([Centro] ASC, [Proyecto] ASC)
);

