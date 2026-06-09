@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create  right outer  join cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity YAB_RIGHT_JOIN_CDS 
   as select from zvkfeb01_dt_cust as cust
   right outer join zvkfeb01_dt_so as header
         on  cust.cust_id = header.buyer  
    right outer join zvkfeb01_dt_soit as sitem
      on header.soid = sitem.soid
    right outer join zvkfeb01_dt_prod as product
     on sitem.product = product.prod_id        
{
  key cust.cust_id as CustId,
  key header.soid as Soid,
  key sitem.item_id as ItemId,
  key product.prod_id as productid ,
  cust.name as Name,
  cust.company_name as CompanyName,
  cust.country as Country,
  cust.city as City,
  cust.mobile as Mobile,
  cust.local_last_changed as LocalLastChanged,
  cust.last_changed as LastChanged,
  cust.local_changed_by as LocalChangedBy,
  cust.last_changed_by as LastChangedBy,
  header.buyer as Buyer,
  header.sales_person as SalesPerson,
  header.sales_timestamp as SalesTimestamp,
  header.sales_manager as SalesManager,
  header.approval_timestamp as ApprovalTimestamp,
  header.created_by as CreatedBy,
  header.created_on as CreatedOn,
  header.changed_by as ChangedBy,
  header.changed_on as ChangedOn,
  header.url as Url,
  sitem.product as Product,
@Semantics.amount.currencyCode: 'currency'  
  sitem.amount as Amount,
  sitem.currency as Currency,
  sitem.image_item as ImageItem,
  product.descpt as Descpt,
 @Semantics.amount.currencyCode: 'currency' 
  product.price as Price
 
  
}
