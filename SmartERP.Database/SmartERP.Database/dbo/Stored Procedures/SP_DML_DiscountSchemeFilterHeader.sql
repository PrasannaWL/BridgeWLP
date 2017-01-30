CREATE PROCEDURE [dbo].[SP_DML_DiscountSchemeFilterHeader]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@DiscountSchemeCode int = 0 ,
@FilterTableCode int = 0 ,
@FilterOrder int = 0 ,
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

	INSERT INTO [dbo].[DiscountSchemeFilterHeader]
           (
           [DiscountSchemeCode]
           ,[FilterTableCode]
           ,[FilterOrder]
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			
			@DiscountSchemeCode  ,
			@FilterTableCode ,
			@FilterOrder ,
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
	  UPDATE [DiscountSchemeFilterHeader] SET
           [DiscountSchemeCode]=@DiscountSchemeCode
           ,[FilterTableCode]=@FilterTableCode
           ,[FilterOrder]=@FilterOrder
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
	DELETE FROM [DiscountSchemeFilterHeader]
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [DiscountSchemeFilterHeader] 
             WHERE Id = @Id and IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT * FROM [DiscountSchemeFilterHeader] WHERE IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,[DiscountSchemeCode] AS DisplayValue
            FROM [DiscountSchemeFilterHeader] 
			WHERE ISNULL(IsActive,0) =1 ;
			
	END
END