CREATE TABLE [dbo].[Dim_TurnosSAP] (
    [Centro] NVARCHAR (4) NOT NULL,
    [Turno]  NVARCHAR (4) NOT NULL,
    CONSTRAINT [PK_Dim_TurnosSAP] PRIMARY KEY CLUSTERED ([Centro] ASC, [Turno] ASC)
);

