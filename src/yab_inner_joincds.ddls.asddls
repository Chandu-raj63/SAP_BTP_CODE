@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create  inner joins cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_inner_joincds 
      as select from zvkfeb01_dt_cust as cust
      inner join zvkfeb01_dt_so as sheader
      on cust.cust_id = sheader.buyer 
      inner join zvkfeb01_dt_soit as sitem
      on sheader.soid = sitem.soid
      inner join zvkfeb01_dt_prod as product
      on sitem.product = product.prod_id
      
      
{
    key cust.cust_id as CustId,
    key product.prod_id as ProdId,
    key sheader.soid as Soid,
    key sitem.item_id as ItemId,
    cust.name as Name,
    cust.company_name as CompanyName,
    cust.country as Country,
    cust.city as City,
    cust.mobile as Mobile,
    cust.local_last_changed as LocalLastChanged,
    cust.last_changed as LastChanged,
    cust.local_changed_by as LocalChangedBy,
    cust.last_changed_by as LastChangedBy,
    product.descpt as Descpt,
 @Semantics.amount.currencyCode: 'currency'   
    product.price as Price,
    product.currency as Currency,
    sheader.buyer as Buyer,
    sheader.sales_person as SalesPerson,
    sheader.sales_timestamp as SalesTimestamp,
    sheader.sales_manager as SalesManager,
    sheader.approval_timestamp as ApprovalTimestamp,
    sheader.created_by as CreatedBy,
    sheader.created_on as CreatedOn,
    sheader.changed_by as ChangedBy,
    sheader.changed_on as ChangedOn,
    sheader.url as Url,
    sitem.product as Product,
     @Semantics.amount.currencyCode: 'currency'   
    sitem.amount as Amount,
    sitem.image_item as ImageItem
    
    
}
