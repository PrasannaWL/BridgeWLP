CREATE PROCEDURE [dbo].[SP_DML_DiscountDealerTargetGroup]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@TargetType varchar(max) =null ,
@TargetSubType varchar(max) =null,
@PeriodCode int = 0,
@BranchCode int = 0,
@PeriodTypeCode int = 0,
@ProductClassificationCode int = 0,
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

	INSERT INTO [dbo].[DiscountDealerTargetGroup]
           (
           [TargetType]
           ,[TargetSubType]
           ,[PeriodCode]
           ,[BranchCode]
           ,[PeriodTypeCode]
           ,[ProductClassificationCode]
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			
			@TargetType  ,
			@TargetSubType ,
			@PeriodCode ,
			@BranchCode  ,
			@PeriodTypeCode  ,
			@ProductClassificationCode ,
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
	  UPDATE [DiscountDealerTargetGroup] SET
           [TargetType]=@TargetType
           ,[TargetSubType]=@TargetSubType
           ,[PeriodCode] =@PeriodCode
           ,[BranchCode] =@BranchCode
           ,[PeriodTypeCode] =@PeriodTypeCode
           ,[ProductClassificationCode] =@ProductClassificationCode
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
	DELETE FROM [DiscountDealerTargetGroup]
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [DiscountDealerTargetGroup] 
             WHERE Id = @Id and IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT * FROM [DiscountDealerTargetGroup] WHERE IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,[TargetType] AS DisplayValue
            FROM [DiscountDealerTargetGroup] 
			WHERE ISNULL(IsActive,0) =1 ;
			
	END
END



