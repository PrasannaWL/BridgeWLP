CREATE PROCEDURE [dbo].[SP_DML_DiscountScheme]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@DisountCode int = 0 ,
@SchemeDescription varchar(max) =null,
@DiscountNarration varchar(max) =null,
@LedgerCode int = 0,
@Remarks varchar(max) =null ,
@SMSText varchar(max)=null ,
@StartDate smalldatetime=null ,
@EndDate smalldatetime=null ,
@ActualEndDate smalldatetime=null ,
@SchemeStatus char(1)  =null,
@ClosedBy int = 0,
@ClosedOn smalldatetime  =null,
@PeriodTypeCode tinyint  = 0,
@CumulativeDiscount char(1)  =null,
@AdvanceRequired char(1)  =null,
@DistountApply char(1)  =null,
@DiscountExecutionDays int = 0,
@isconsideredforProfitEarning char(1)  =null,
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

	INSERT INTO [dbo].[DiscountScheme]
           (
           [DisountCode]
           ,[SchemeDescription]
           ,[DiscountNarration]
           ,[LedgerCode]
           ,[Remarks]
           ,[SMSText]
           ,[StartDate]
		   ,[EndDate]
		   ,[ActualEndDate]
		   ,[SchemeStatus]
		   ,[ClosedBy]
		   ,[ClosedOn]
		   ,[PeriodTypeCode]
		   ,[CumulativeDiscount]
		   ,[AdvanceRequired]
		   ,[DistountApply]
		   ,[DiscountExecutionDays]
		   ,[isconsideredforProfitEarning]
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
			
			@DisountCode
           ,@SchemeDescription
           ,@DiscountNarration
           ,@LedgerCode
           ,@Remarks
           ,@SMSText
           ,@StartDate
		   ,@EndDate
		   ,@ActualEndDate
		   ,@SchemeStatus
		   ,@ClosedBy
		   ,@ClosedOn
		   ,@PeriodTypeCode
		   ,@CumulativeDiscount
		   ,@AdvanceRequired
		   ,@DistountApply
		   ,@DiscountExecutionDays
		   ,@isconsideredforProfitEarning
           ,@CreatedTimeStamp
           ,@UpdatedTimeStamp
           ,@CreatedBy
           ,@UpdatedBy
           ,@IsActive);

		SET @Id= @@IDENTITY ;
		SELECT @id ;
	END 
	ELSE IF  @Action = 'UPDATE' 
	BEGIN 
	  UPDATE [DiscountScheme] SET
            [DisountCode]=@DisountCode
           ,[SchemeDescription] = @SchemeDescription
           ,[DiscountNarration] = @DiscountNarration
           ,[LedgerCode] = @LedgerCode
           ,[Remarks] = @Remarks
           ,[SMSText] = @SMSText
           ,[StartDate] = @StartDate
		   ,[EndDate] = @EndDate
		   ,[ActualEndDate] = @ActualEndDate
		   ,[SchemeStatus] = @SchemeStatus
		   ,[ClosedBy] = @ClosedBy
		   ,[ClosedOn] = @ClosedOn
		   ,[PeriodTypeCode] = @PeriodTypeCode
		   ,[CumulativeDiscount] = @CumulativeDiscount
		   ,[AdvanceRequired] = @AdvanceRequired
		   ,[DistountApply] = @DistountApply
		   ,[DiscountExecutionDays] = @DiscountExecutionDays
		   ,[isconsideredforProfitEarning] = @isconsideredforProfitEarning
           --,[CreatedTimeStamp]
           ,[UpdatedTimeStamp] = GETUTCDATE()
           --,[CreatedBy]
           ,[UpdatedBy] = @UpdatedBy
           ,[IsActive] = @IsActive
            WHERE Id = @Id ;
			
			SELECT @id ;
	END 
	ELSE IF @Action = 'DELETE' 
	BEGIN
	DELETE FROM [DiscountScheme]
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [DiscountScheme] 
             WHERE Id = @Id and IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT * FROM [DiscountScheme] WHERE IsActive = @IsActive;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,[DisountCode] + [SchemeDescription] AS DisplayValue
            FROM [DiscountScheme] 
			WHERE ISNULL(IsActive,0) =1 ;
			
	END
END



