USE DatabaseFirstDemo;
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('posts'))
BEGIN;
    DROP TABLE [posts];
END;
GO

CREATE TABLE [posts] (
    [post_id] INTEGER NOT NULL IDENTITY(1, 1),
    [date_published] SMALLDATETIME NULL,
    [title] VARCHAR(500) NULL,
	[body] VARCHAR(8000) NULL,
	PRIMARY KEY ([post_id])
);