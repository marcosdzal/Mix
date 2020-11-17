CREATE TABLE [dbo].[Jobs] (
    [Centro]      NVARCHAR (10)  NOT NULL,
    [Package]     NVARCHAR (50)  NOT NULL,
    [Job]         NVARCHAR (100) NOT NULL,
    [UserEnabled] BIT            DEFAULT ((0)) NOT NULL,
    [Descr]       NVARCHAR (200) DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED ([Centro] ASC, [Package] ASC)
);

