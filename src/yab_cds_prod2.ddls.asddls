@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'simple product (mara) cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_cds_prod2 as select from zvkfeb01_dt_prod
{
    key prod_id ,
    descpt ,
    @Semantics.amount.currencyCode: 'currency'
    price ,
    currency 
    
}
