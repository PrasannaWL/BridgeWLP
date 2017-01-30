CREATE PROCEDURE [dbo].[SP_DML_Discounts]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@DiscountName varchar(max) =null ,
@DiscountPriority int = 0,
@ConsiderProfitEarning char(1) = null,
@DefaultLedgerCode int = 0 ,
@SchemeType char(1) = null ,
@DiscountPercentageModel smallint = 0 ,
@SlabModelExecutionCode smallint = 0,
@SingleDataModelExecutionCode smallint = 0,
@DiscountApplyOn char(1) = null,
@ConsiderQtyValueFrom char(1) = null,
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

	INSERT INTO [dbo].[Discounts]
           (
           [DiscountName]
           ,[DiscountPriority]
           ,[ConsiderProfitEarning]
           ,[DefaultLedgerCode]
           ,[SchemeType]
           ,[DiscountPercentageModel]
           ,[SlabModelExecutionCode]
		   ,[SingleDataModelExecutionCode]
		   ,[DiscountApplyOn]
		   ,[ConsiderQtyValueFrom]
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			
			@DiscountName  ,
			@DiscountPriority ,
			@ConsiderProfitEarning ,
			@DefaultLedgerCode  ,
			@SchemeType  ,
			@DiscountApplyOn  ,
			@DiscountPercentageModel  ,
			@SlabModelExecutionCode,
			@DiscountApplyOn,
			@ConsiderQtyValueFrom,
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
	  UPDATE [Discounts] SET
           [DiscountName]=@DiscountName
           ,[DiscountPriority]=@DiscountPriority
           ,[ConsiderProfitEarning]=@ConsiderProfitEarning
           ,[DefaultLedgerCode]=@DefaultLedgerCode
           ,[SchemeType]=@SchemeType
           ,[DiscountPercentageModel]=@DiscountPercentageModel
           ,[SlabModelExecutionCode]=@SlabModelExecutionCode
		   ,[SingleDataModelExecutionCode]=@SingleDataModelExecutionCode
		   ,[DiscountApplyOn]=@DiscountApplyOn
		   ,[ConsiderQtyValueFrom]= @ConsiderQtyValueFrom
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
	DELETE FROM [Discounts]
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [Discounts] 
             WHERE Id = @Id and IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT * FROM [Discounts] WHERE IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,[DiscountName] AS DisplayValue
            FROM [Discounts] 
			WHERE ISNULL(IsActive,0) =1 ;
			
	END
END



