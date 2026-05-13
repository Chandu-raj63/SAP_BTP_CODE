@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create association cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_associatio_cds1 
   as select from  zvkfeb01_dt_so  as header
   association to zvkfeb01_dt_cust as _cust
    on header.buyer = _cust.cust_id
{
   key header.soid as Soid,
   header.buyer as Buyer,
   header.sales_person as SalesPerson,
   header.sales_timestamp as SalesTimestamp,
   header.sales_manager as SalesManager,
   header.approval_timestamp as ApprovalTimestamp,
   header.created_by as CreatedBy,
   header.created_on as CreatedOn,
   header.changed_by as ChangedBy,
   header.changed_on as ChangedOn,
   header.url as Url ,
   _cust
}
