CREATE PROCEDURE [dbo].[SP_DML_DiscountSchemePercentage_DataModel]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@DiscountSchemeCode int = 0,
@DataModel_KeyCode int = 0,
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

	INSERT INTO [dbo].[DiscountSchemePercentage_DataModel]
           (
           [DiscountSchemeCode]
           ,[DataModel_KeyCode]
           ,[DiscountPercentage]
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			@DiscountSchemeCode  ,
			@DataModel_KeyCode ,
			@DiscountPercentage ,
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
	  UPDATE [DiscountSchemePercentage_DataModel] SET
           [DiscountSchemeCode]=@DiscountSchemeCode
           ,[DataModel_KeyCode]=@DataModel_KeyCode
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
	DELETE FROM [DiscountSchemePercentage_DataModel]
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [DiscountSchemePercentage_DataModel] 
             WHERE Id = @Id and IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT * FROM [DiscountSchemePercentage_DataModel] WHERE IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,[DiscountSchemeCode] AS DisplayValue
            FROM [DiscountSchemePercentage_DataModel] 
			WHERE ISNULL(IsActive,0) =1 ;
			
	END
END



