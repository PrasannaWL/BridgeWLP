CREATE PROCEDURE [dbo].[SP_DML_SalePickListDetails]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@PickListHeaderCode	int = null,
@ItemCode	int = null,
@PickListQuantity	[numeric](18, 3) = null,
@ispackedItem	char(1) = null,
@Iscancelled	char(1) = null,
@CancelledReason	[varchar](256) = null,
@CancelledDate	smalldatetime = null,
@CancelledBy	int = null,
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
	set @Iscancelled = 'N';
	INSERT INTO [dbo].SalePickListDetails
           (
		    PickListHeaderCode
			,ItemCode
			,PickListQuantity
			,ispackedItem
			,Iscancelled
			,CancelledReason
			,CancelledDate
			,CancelledBy
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			@PickListHeaderCode,
			@ItemCode,
			@PickListQuantity,
			@ispackedItem,
			@Iscancelled,
			@CancelledReason,
			@CancelledDate,
			@CancelledBy,	
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
	  UPDATE [dbo].SalePickListDetails 
	   SET [PickListHeaderCode] = @PickListHeaderCode
		  ,[ItemCode] = @ItemCode
		  ,[PickListQuantity] = @PickListQuantity
		  ,[ispackedItem] = @ispackedItem
		  ,[Iscancelled] = @Iscancelled
		  ,[CancelledReason] = @CancelledReason
		  ,[CancelledDate] = @CancelledDate
		  ,[CancelledBy] = @CancelledBy
			,[UpdatedTimeStamp]=GETUTCDATE()          
			,[UpdatedBy]=@UpdatedBy
			,[IsActive]=@IsActive
        WHERE [Id] = @Id ;

		SELECT @id ;
	END 
	ELSE IF @Action = 'DELETE' 
	BEGIN
	DELETE FROM [dbo].SalePickListDetails
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [dbo].SalePickListDetails
             WHERE Id = @Id ;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT  *
           FROM dbo.SalePickListDetails ;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,PickListHeaderCode AS DisplayValue
            FROM dbo.SalePickListDetails 
			WHERE IsActive =1 ;
			
	END
END



