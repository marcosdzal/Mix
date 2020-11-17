CREATE TABLE [dbo].[RechazosSAP] (
    [AnoBono]      INT           NULL,
    [MesBono]      INT           NULL,
    [Centro]       NVARCHAR (4)  NULL,
    [Bono]         NVARCHAR (10) NULL,
    [Material]     NVARCHAR (18) NULL,
    [LineaBono]    INT           NULL,
    [LineaRechazo] INT           NULL,
    [Cantidad]     REAL          NULL,
    [Rechazo]      NVARCHAR (4)  NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_RechazosSAP_CentroBonoLineaBono]
    ON [dbo].[RechazosSAP]([Centro] ASC, [Bono] ASC, [LineaBono] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RechazosSAP_CentroMaterial]
    ON [dbo].[RechazosSAP]([Centro] ASC, [Material] ASC);

