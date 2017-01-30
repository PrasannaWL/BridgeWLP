CREATE PROCEDURE [dbo].[SP_DML_DiscountFilterMaster]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@FilterTableName varchar(max) =null ,
@QueryObjName varchar(max) =null,
@QueryObjType char(1) = null,
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

	INSERT INTO [dbo].[DiscountFilterMaster]
           (
           [FilterTableName]
           ,[QueryObjName]
           ,[QueryObjType]
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			@FilterTableName  ,
			@QueryObjName ,
			@QueryObjType ,
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
	  UPDATE [DiscountFilterMaster] SET
           [FilterTableName]=@FilterTableName
           ,[QueryObjName]=@QueryObjName
           ,[QueryObjType]=@QueryObjType
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
	DELETE FROM [DiscountFilterMaster]
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [DiscountFilterMaster] 
             WHERE Id = @Id and IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT * FROM [DiscountFilterMaster] WHERE IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,[FilterTableName] AS DisplayValue
            FROM [DiscountFilterMaster] 
			WHERE ISNULL(IsActive,0) =1 ;
			
	END
END



