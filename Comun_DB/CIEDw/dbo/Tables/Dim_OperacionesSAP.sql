CREATE TABLE [dbo].[Dim_OperacionesSAP] (
    [Centro]         NVARCHAR (10) NOT NULL,
    [ClaveModelo]    NVARCHAR (7)  NOT NULL,
    [DescrOperacion] NVARCHAR (40) NULL,
    CONSTRAINT [PK_Dim_OperacionesSAP] PRIMARY KEY CLUSTERED ([Centro] ASC, [ClaveModelo] ASC)
);

