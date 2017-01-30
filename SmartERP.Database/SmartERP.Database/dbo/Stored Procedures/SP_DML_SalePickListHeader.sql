CREATE PROCEDURE [dbo].[SP_DML_SalePickListHeader]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@PickListHeaderCode int = null,
@Type char(1) =NULL,
@OrderNo int = NULL,
@StockTransferCode int = NULL,
@BarCodeEnabled char(1) =  NULL,
@Transportcode int = NULL,
@BookingPlace varchar(256) =NULL,
@InvoiceStatus char(1) =NULL,
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
	
	INSERT INTO [dbo].SalePickListHeader
           (
		    PickListHeaderCode
			,[Type]
			,OrderNo
			,StockTransferCode
			,BarCodeEnabled
			,Transportcode
			,BookingPlace
			,InvoiceStatus
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			@PickListHeaderCode,
			@Type,
			@OrderNo,
			@StockTransferCode,
			@BarCodeEnabled,
			@Transportcode,
			@BookingPlace,
			@InvoiceStatus,		
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
	  UPDATE [dbo].SalePickListHeader 
	    SET [PickListHeaderCode] = @PickListHeaderCode
			,[Type] = @Type
			,[OrderNo] = @OrderNo
			,[StockTransferCode] = @StockTransferCode
			,[BarCodeEnabled] = @BarCodeEnabled
			,[Transportcode] = @Transportcode
			,[BookingPlace] = @BookingPlace
			,[InvoiceStatus] = @InvoiceStatus
			,[UpdatedTimeStamp]=GETUTCDATE()          
			,[UpdatedBy]=@UpdatedBy
			,[IsActive]=@IsActive
        WHERE [Id] = @Id ;

		SELECT @id ;
	END 
	ELSE IF @Action = 'DELETE' 
	BEGIN
	DELETE FROM [dbo].SalePickListHeader
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [dbo].SalePickListHeader
             WHERE Id = @Id ;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT  *
           FROM dbo.SalePickListHeader ;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,PickListHeaderCode AS DisplayValue
            FROM dbo.SalePickListHeader 
			WHERE IsActive =1 ;
			
	END
END



