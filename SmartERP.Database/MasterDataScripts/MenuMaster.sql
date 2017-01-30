INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Dashboard', 'Dashboard', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Users', 'Users', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Transporter', 'Transporter', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Bank', 'Bank', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Customer', 'Customer', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Settings', 'Settings', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Company', 'Company', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('BranchControls', 'Bracnch Controls', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('AccountsMaster', 'Accounts Master', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Dealer', 'Dealer ', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('ServiceStation', 'Service Station', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('OutsideSupplier', 'Outside Supplier', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Staff', 'Staff', '', '', 'Module',getdate(), getdate(), 'admin', 'admin', 1 )
--settings
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('PrivacyPolicy', 'Privacy & Policy', '', 'Settings', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Roles', 'Roles', '', 'Settings', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Preference', 'Preference', '', 'Settings', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
--company
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('HeadOffice', 'Head Office', '', 'Company', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('HoUnit', 'HO Unit', '', 'Company', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('SalesPoint', 'Sales Point', '', 'Company', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
--branch control
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('CommonCustomer', 'Common Customer', '', 'BranchControls', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('CustomerControls', 'Customer Controls', '', 'BranchControls', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('ServiceCharge', 'Service Charge', '', 'BranchControls', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('GraceDays', 'Grace Days', '', 'BranchControls', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('CreditDays', 'Credit Days', '', 'BranchControls', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('DebitNote', 'Debit Note BCD Days', '', 'BranchControls', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('BranchMaster', 'Branch Master', '', 'BranchControls', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('CompanyMaster', 'Company Master', '', 'BranchControls', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('DocumentMaster', 'Document Master', '', 'BranchControls', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
--accountsmaster
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('AccountGroup', 'Account Group', '', 'AccountsMaster', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('BankLedger', 'Bank Ledger', '', 'AccountsMaster', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('BankChallanType', 'SBank Challan Type', '', 'AccountsMaster', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('GeneralLedger', 'General Ledger', '', 'AccountsMaster', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('OutsideSupplier', 'Outside Supplier', '', 'AccountsMaster', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('ExpenditureLedger', 'Expenditure Ledger', '', 'AccountsMaster', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('ExpenditureBreakup', 'Expenditure Breakup', '', 'AccountsMaster', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('NarrationsList', 'Narrations List', '', 'AccountsMaster', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('GJVControl', 'GJV Control', '', 'AccountsMaster', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
--dealer
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('SalesAccount', 'Sales Account', '', 'Dealer', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('DepositAccount', 'Deposit Account', '', 'Dealer', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('ECMSVirtual', 'ECMS Virtual A/c No entry', '', 'Dealer', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
--service station
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('SalesAccount', 'Sales Account', '', 'ServiceStation', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('DepositAccount', 'Deposit Account', '', 'ServiceStation', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('ECMSVirtual', 'ECMS Virtual A/c No entry', '', 'ServiceStation', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('MaterialTransferAccount', 'Material Transfer Account', '', 'ServiceStation', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('ServiceBillAccount', 'Service Bill Account', '', 'ServiceStation', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
--outside supplier
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('Purchase Account', 'Purchase Account', '', 'OutsideSupplier', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('DepositAccount', 'Deposit Account', '', 'OutsideSupplier', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('MaterialTransferAccount', 'Material Transfer Account', '', 'OutsideSupplier', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
--staff
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('MainAccount', 'Main Account', '', 'Staff', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('AdvanceTransferAccount', 'Advance Transfer Account', '', 'Staff', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('ECMSVirtual', 'ECMS Virtual A/c No entry', '', 'Staff', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('MaterialTransferAccount', 'Material Transfer Account', '', 'Staff', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )
INSERT INTO [dbo].[Menu]([MenuCode],[MenuName],[MenuURL],[ParentMenucode],[MenuType],[CreatedTimeStamp],[UpdatedTimeStamp],[CreatedBy],[UpdatedBy],[IsActive])
VALUES('ServiceBillAccount', 'Service Bill Account', '', 'Staff', 'Menu',getdate(), getdate(), 'admin', 'admin', 1 )