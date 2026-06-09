@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'simple product (mara) cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_cds_prod1 as select from zvkfeb01_dt_prod
{
    key prod_id as ProdId,
    descpt as Descpt,
    @Semantics.amount.currencyCode: 'currency'
    price as Price,
    currency as Currency
}
