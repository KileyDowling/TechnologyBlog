USE [TechBlogCMS]
GO
/****** Object:  StoredProcedure [dbo].[UpdateBlogPost]    Script Date: 8/20/2015 12:58:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[UpdateBlogPost]
(
 @BlogPostId int,
 @UserId nvarchar(128),
 @PostContent varchar(max),
 @StatusID int,
 @DateOfPost datetime,
 @PostTittle varchar(200)
)
as

UPDATE [dbo].[BlogPost]
SET [UserID] = @UserId,
	[PostContent] = @PostContent,
	[StatusID] = @StatusID,
	[DateOfPost] = @DateOfPost,
	[PostTitle] = @PostTittle
WHERE [BlogPostID] = @BlogPostId







GO
