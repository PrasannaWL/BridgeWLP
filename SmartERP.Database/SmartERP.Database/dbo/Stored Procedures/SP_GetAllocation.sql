

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetAllocation]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  DealerName,
			p.OrderNo  as OrderNo,
			Itemcode, 
			ItemName, 
			RemainingQty as OrderedQty,
			AlottedQty ,
			MPOAdvance,
			BarCodeApplicable			 
	from SaleOrderItemPriority p
	inner join SalesOrder s on p.OrderNo = s.OrderNo
	inner join Dealer d on s.DealerCode = d.DealerCode
	inner join Item i on p.Itemcode = i.ItemSalecode
	where AlottedQty - TBBQty > 0
	order by DealerName, OrderNo
END

GO


