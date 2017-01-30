CREATE PROCEDURE [dbo].[SP_DML_DiscountDealerTargetSlab]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@TargetGroupCode int = 0 ,
@ProductClassificationCode int = 0,
@ExecutionOrder int = 0,
@AchievementPercentageFrom decimal(18,2) ,
@AchievementPercentageTo decimal(18,2),
@DiscountPercentage decimal(18,2),
@CreatedTimeStamp datetime = null,
@UpdatedTimeStamp datetime = null,
@CreatedBy varchar(max)=null ,
@UpdatedBy varchar(max) =null,
@IsActive bit =1
AS
BEGIN
SET @CreatedTimeStamp  = GETUTCDATE();
SET @UpdatedTimeStamp  = GETUTCDATE();
  
    IF ( @Id=0 and  @Action='UPDATE' ) SET  @Action = 'INSERT' 

	IF @Action = 'INSERT' 
	BEGIN

	INSERT INTO [dbo].[DiscountDealerTargetSlab]
           (
           [TargetGroupCode]
           ,[ProductClassificationCode]
           ,[ExecutionOrder]
           ,[AchievementPercentageFrom]
           ,[AchievementPercentageTo]
           ,[DiscountPercentage]
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			
			@TargetGroupCode  ,
			@ProductClassificationCode ,
			@ExecutionOrder ,
			@AchievementPercentageFrom  ,
			@AchievementPercentageTo  ,
			@DiscountPercentage  ,
			GETUTCDATE(),
			GETUTCDATE(),
			@CreatedBy ,
			@UpdatedBy,
			@IsActive);

		SET @Id= @@IDENTITY ;
		SELECT @id ;
	END 
	ELSE IF  @Action = 'UPDATE' 
	BEGIN 
	  UPDATE [DiscountDealerTargetSlab] SET
           [TargetGroupCode]=@TargetGroupCode
           ,[ProductClassificationCode]=@ProductClassificationCode
           ,[ExecutionOrder]= @ExecutionOrder
           ,[AchievementPercentageFrom]=@AchievementPercentageFrom
           ,[AchievementPercentageTo]=@AchievementPercentageTo
           ,[DiscountPercentage]=@DiscountPercentage
           --,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]=GETUTCDATE()
           --,[CreatedBy]
           ,[UpdatedBy]=@UpdatedBy
           ,[IsActive]=@IsActive
            WHERE Id = @Id ;

			SELECT @id ;
	END 
	ELSE IF @Action = 'DELETE' 
	BEGIN
	DELETE FROM [DiscountDealerTargetSlab]
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [DiscountDealerTargetSlab] 
             WHERE Id = @Id and IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT * FROM [DiscountDealerTargetSlab] WHERE IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,[TargetGroupCode] AS DisplayValue
            FROM [DiscountDealerTargetSlab] 
			WHERE ISNULL(IsActive,0) =1 ;
			
	END
END



