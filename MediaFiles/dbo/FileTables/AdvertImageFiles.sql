﻿CREATE TABLE [dbo].[AdvertImageFiles] AS FILETABLE FILESTREAM_ON [AdvertImageFiles]
WITH (FILETABLE_COLLATE_FILENAME = SQL_Latin1_General_CP1_CI_AS, FILETABLE_DIRECTORY = N'AdvertImageFiles');
