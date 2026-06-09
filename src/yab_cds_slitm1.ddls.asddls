@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'simple sales item cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_cds_slitm1 
as select from zvkfeb01_dt_soit
{
  key soid ,
  key item_id ,
  product ,
  @Semantics.amount.currencyCode: 'currency'
  amount ,
  currency ,
  sales_person ,
  sales_timestamp ,
  sales_manager ,
  approval_timestamp ,
  changed_by ,
  changed_on    
     
}
