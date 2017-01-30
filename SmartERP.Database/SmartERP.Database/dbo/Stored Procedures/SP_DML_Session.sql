CREATE PROCEDURE [dbo].[SP_DML_Session]
@Action VARCHAR(10) ='UPDATE',
@Id int = 0,
@SessionID  varchar(max) =NULL,
@LoginTime datetime = NULL,
@UserCode int = NULL,
@RoleCode int =  NULL,
@LastAccessedTime datetime = NULL,
@Ipaddress varchar(max) =NULL,
@Deviceinfo varchar(max) =NULL,
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
	
	INSERT INTO [dbo].Session
           (
		   [SessionID]
			,[LoginTime]
			,[UserCode] 
			,[RoleCode] 
			,[LastAccessedTime] 
			,[Ipaddress] 
			,[Deviceinfo]    
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive])
     VALUES (
	 @SessionID,
			@CreatedTimeStamp,
			@UserCode ,
@RoleCode,
@UpdatedTimeStamp,
@Ipaddress,
@Deviceinfo ,		
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
	  UPDATE [dbo].Session SET
			 [LastAccessedTime] =GETUTCDATE() 
           ,[UpdatedTimeStamp]=GETUTCDATE()          
           ,[UpdatedBy]=@UpdatedBy
           ,[IsActive]=@IsActive
            WHERE [SessionID] = @SessionID ;

			SELECT @id ;
	END 
	ELSE IF @Action = 'DELETE' 
	BEGIN
	DELETE FROM [dbo].Session
             WHERE Id = @Id ;
			SELECT @id ;
	END
	ELSE IF @Action = 'SELECT' 
	BEGIN
	SELECT * FROM [dbo].Session
             WHERE Id = @Id ;
			
	END
	ELSE IF @Action = 'SELECTALL' 
	BEGIN
	SELECT  [id]
			 ,[SessionID]
			,[LoginTime]
			,[UserCode] 
			,[RoleCode] 
			,[LastAccessedTime] 
			,[Ipaddress] 
			,[Deviceinfo]    
           ,[CreatedTimeStamp]
           ,[UpdatedTimeStamp]
           ,[CreatedBy]
           ,[UpdatedBy]
           ,[IsActive]
           FROM dbo.Session ;
			
	END
	ELSE IF @Action = 'DROPDOWN' 
	BEGIN
	SELECT  [id] 
           ,[Ipaddress] + [Deviceinfo] AS DisplayValue
            FROM dbo.Session 
			WHERE IsActive =1 ;
			
	END
END



