@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create aggregate function cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_aggregate_fn_cds1 
   as select from zvkfeb01_dt_demo
{
    id ,
    int1_field ,
    sum(int1_field) as subtotal,
    avg(int1_field as abap.dec( 4, 1 ) ) as average 
    
}  group by  id ,int1_field
