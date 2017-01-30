CREATE PROCEDURE [dbo].[SP_Report_InvoicePrinting]
@InvoiceNo int

as Begin
if (@InvoiceNo=0) begin

select TOP 1 1 as  DocumentNumber,
 getdate() as DocumentDate, 
 1 as LRRRNumber, 
 getdate() as LRRRDate, 
 1 as PackageCount, 
 1 as VehicleNumber
from [Users] 
select 1 as itemecode, RoleName itemname  from [Role]
return 
end
--select DocumentNumber, DocumentDate, LRRRNumber, LRRRDate, PackageCount, VehicleNumber, GCD, BCD, ICD,
--taxamount, roundoffamount,
--TransportName ,
--DealerName, VATNo, CSTDate, CSTDate , c.Address1 as DealerAddress1, c.Address2 as DealerAddress2, C.City as DealerCity, C.State as DealerState, C.Pincode as DealerPincode,
--BranchName, b.Address1 as BranchAddress1, b.Address2 as BranchAddress2, C.City as BranchCity, C.State as BranchState, C.Pincode as BranchPincode

--from SalesInvoice as a, Branch as b, Dealer as C, BranchTransport as D where InvoiceNo= @invoiceNo and
--isnull(a.DeviatedTransportCode , a.TransportCode ) = d.TransportCode and
--a.BranchCode = B.BranchCode and
--a.DealerCode = C.DealerCode


--select itemecode, itemname, ItemHeading, uom, SerialNumberItem , QtyInPacket, Gross_WT , Net_WT ,
--WarrantyExpiryDate, ExtendedWarrantyExpiryDate, Rate, IssuedQuantity

--from SalesInvoiceItem as a , item as b where InvoiceNo=@invoiceno
--and a.ItemCode = b.ItemCode

--select itemcode, SerialNumber from SalesInvoiceSerialNumber where InvoiceNo=@invoiceno

--Select DiscountName , DiscountPercentage, Amount from SalesInvoiceDiscounts as a , discounts as b
--where InvoiceNo= @invoiceno and a.DiscountCode = b.DiscountApplyOn


End 
