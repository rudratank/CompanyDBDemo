CREATE TABLE [dbo].[Categories]
(
    [CategoryID]   INT           NOT NULL IDENTITY(1,1),
    [CategoryName] NVARCHAR(100) NOT NULL,
    [Description]  NVARCHAR(500) NULL,
    [IsActive]     BIT           NOT NULL DEFAULT 1,
    [CreatedDate]  DATETIME2     NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID] ASC),
    CONSTRAINT [UQ_Categories_Name] UNIQUE ([CategoryName])
)