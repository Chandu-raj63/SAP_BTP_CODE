@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create  right outer  join cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_right_join_cds2
  as select from zvkfeb01_dt_soit as sitem
   right outer join zvkfeb01_dt_prod as product
    on sitem.product = product.prod_id
{
    key product.prod_id as ProdId,
    key sitem.soid as Soid,
    key sitem.item_id as ItemId,
    product.descpt as Descpt,
 @Semantics.amount.currencyCode: 'currency'   
    product.price as Price,
    product.currency as Currency,
    sitem.product as Product,
 @Semantics.amount.currencyCode: 'currency'   
    sitem.amount as Amount,
    sitem.sales_person as SalesPerson,
    sitem.sales_timestamp as SalesTimestamp,
    sitem.sales_manager as SalesManager,
    sitem.approval_timestamp as ApprovalTimestamp,
    sitem.changed_by as ChangedBy,
    sitem.changed_on as ChangedOn,
    sitem.image_item as ImageItem
    
}
