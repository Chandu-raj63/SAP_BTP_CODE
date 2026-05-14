@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create  right outer  join cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_right_join_cds1 
   as select from zvkfeb01_dt_cust 
   right outer join zvkfeb01_dt_so
   on  zvkfeb01_dt_cust.cust_id = zvkfeb01_dt_so.buyer  
{
  key zvkfeb01_dt_cust.cust_id as CustId,
  key zvkfeb01_dt_so.soid as Soid,
  zvkfeb01_dt_cust.name as Name,
  zvkfeb01_dt_cust.company_name as CompanyName,
  zvkfeb01_dt_cust.country as Country,
  zvkfeb01_dt_cust.city as City,
  zvkfeb01_dt_cust.mobile as Mobile,
  zvkfeb01_dt_cust.local_last_changed as LocalLastChanged,
  zvkfeb01_dt_cust.last_changed as LastChanged,
  zvkfeb01_dt_cust.local_changed_by as LocalChangedBy,
  zvkfeb01_dt_cust.last_changed_by as LastChangedBy,
  zvkfeb01_dt_so.buyer as Buyer,
  zvkfeb01_dt_so.sales_person as SalesPerson,
  zvkfeb01_dt_so.sales_timestamp as SalesTimestamp,
  zvkfeb01_dt_so.sales_manager as SalesManager,
  zvkfeb01_dt_so.approval_timestamp as ApprovalTimestamp,
  zvkfeb01_dt_so.created_by as CreatedBy,
  zvkfeb01_dt_so.created_on as CreatedOn,
  zvkfeb01_dt_so.changed_by as ChangedBy,
  zvkfeb01_dt_so.changed_on as ChangedOn,
  zvkfeb01_dt_so.url as Url
 
}
