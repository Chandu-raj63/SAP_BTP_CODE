@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'assignement'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_assignement1_cds 
    as select from yabapro1_dt_prod
    
{
  key prod_id as ProdId,
  descpt as Descpt,
 @Semantics.amount.currencyCode: 'currency'
  price as Price,
  currency as Currency,
// price with 18 % tax
//cast( cast( price as abap.dec(10,2) ) * cast( '1.18' as abap.dec(4,2) ) as abap.dec(10,2) ) as price_with_tax

/* Computed field: Price + 18% Tax */
   //   @Semantics.amount.currencyCode: 'Currency'
    cast(  cast(price as abap.dec(10,2)) * cast( 1.18 as abap.dec(4,2) ) as abap.dec(10,2) ) as pric_with_tax
}
