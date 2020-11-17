CREATE TABLE [dbo].[Dim_VersionesFabricacion] (
    [Centro]             NVARCHAR (4)  NOT NULL,
    [MaterialPpal]       NVARCHAR (18) NOT NULL,
    [VersionFabricacion] NVARCHAR (4)  NOT NULL,
    [FechaVigencia]      DATETIME      NOT NULL,
    [VersionPpal]        BIT           NULL,
    [IdVersion]          INT           NULL,
    CONSTRAINT [PK_Dim_VersionesFabricacion] PRIMARY KEY CLUSTERED ([Centro] ASC, [MaterialPpal] ASC, [VersionFabricacion] ASC, [FechaVigencia] ASC)
);

