@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create (inner) join sales orede and item'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_joincds_so_slit1
 as select from zvkfeb01_dt_so as header
   inner join zvkfeb01_dt_soit as sitem
    on header.soid = sitem.soid 
    
{
    key header.soid  as salesid,
    key sitem.item_id  as sitemid ,
        header.buyer  as buyer  ,
        header.changed_by ,
        header.changed_on ,
        header.sales_person ,
        header.sales_manager ,
        header.sales_timestamp ,
        header.created_by ,
        header.created_on ,
        header.approval_timestamp ,
        sitem.product ,
  @Semantics.amount.currencyCode:'currency'      
        sitem.amount ,
        sitem.currency
    
}
