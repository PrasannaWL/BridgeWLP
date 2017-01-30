CREATE PROCEDURE [dbo].[SP_DML_DiscountSchemePercentage_SlabModel]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@DiscountSchemeCode int = 0 ,
@GradeCode int = 0 ,
@SlabNo int = 0 ,
@StartValue int = 0 ,
@EndValue int = 0 ,
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

	INSERT INTO [dbo].[DiscountSchemePercentage_SlabModel]
           (
           [DiscountSchemeCode]
           ,[GradeCode]
           ,[SlabNo]
           ,[StartValue]
           ,[EndValue]
           ,[DiscountPercentage]
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			
			@DiscountSchemeCode  ,
			@GradeCode ,
			@SlabNo ,
			@StartValue  ,
			@EndValue  ,
			@DiscountPercentage  ,
			GETUTCDATE(),
			GETUTCDATE(),
			@CreatedBy ,
			@UpdatedBy,
			@IsActive)

		SET @Id= @@IDENTITY ;
		SELECT @id ;
	END 
	ELSE IF  @Action = 'UPDATE' 
	BEGIN 
	  UPDATE [DiscountSchemePercentage_SlabModel] SET
           [DiscountSchemeCode]=@DiscountSchemeCode
           ,[GradeCode]=@GradeCode
           ,[SlabNo]=@SlabNo
           ,[StartValue]=@StartValue
           ,[EndValue]=@EndValue
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
	DELETE FROM [DiscountSchemePercentage_SlabModel]
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [DiscountSchemePercentage_SlabModel] 
             WHERE Id = @Id and IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT * FROM [DiscountSchemePercentage_SlabModel] WHERE IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,[DiscountSchemeCode] AS DisplayValue
            FROM [DiscountSchemePercentage_SlabModel] 
			WHERE ISNULL(IsActive,0) =1 ;
			
	END
END