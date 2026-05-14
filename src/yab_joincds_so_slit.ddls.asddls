@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create (inner) join sales orede and item'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_joincds_so_slit  
     as select from zvkfeb01_dt_so 
     join zvkfeb01_dt_soit 
     on zvkfeb01_dt_so.soid = zvkfeb01_dt_soit.soid
{
    key zvkfeb01_dt_so.soid as Soid,
    key zvkfeb01_dt_soit.item_id as ItemId,
    zvkfeb01_dt_so.buyer as Buyer,
    zvkfeb01_dt_so.sales_person as SalesPerson,
    zvkfeb01_dt_so.sales_timestamp as SalesTimestamp,
    zvkfeb01_dt_so.sales_manager as SalesManager,
    zvkfeb01_dt_so.approval_timestamp as ApprovalTimestamp,
    zvkfeb01_dt_so.created_by as CreatedBy,
    zvkfeb01_dt_so.created_on as CreatedOn,
    zvkfeb01_dt_so.changed_by as ChangedBy,
    zvkfeb01_dt_so.changed_on as ChangedOn,
    zvkfeb01_dt_so.url as Url,
    zvkfeb01_dt_soit.product as Product,
    @Semantics.amount.currencyCode: 'currency'
    zvkfeb01_dt_soit.amount as Amount,
    zvkfeb01_dt_soit.currency as Currency,
    zvkfeb01_dt_soit.image_item as ImageItem
}
