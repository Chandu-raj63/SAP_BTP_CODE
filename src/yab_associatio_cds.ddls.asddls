@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create association cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_associatio_cds 
   as select from  zvkfeb01_dt_soit as item
   association [0..1] to zvkfeb01_dt_prod as _product
    on  item.product = _product.prod_id
{
    key item.soid as Soid,
    key item.item_id as ItemId,
    item.product as Product,
 @Semantics.amount.currencyCode:'currency' 
    item.amount as Amount,
    item.currency as Currency,
    item.sales_person as SalesPerson,
    item.sales_timestamp as SalesTimestamp,
    item.sales_manager as SalesManager,
    item.approval_timestamp as ApprovalTimestamp,
    item.changed_by as ChangedBy,
    item.changed_on as ChangedOn,
    item.image_item as ImageItem ,
    _product
}
