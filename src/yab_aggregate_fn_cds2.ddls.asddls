@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create aggregate function cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_aggregate_fn_cds2  
     as select from zvkfeb01_dt_demo
{
  id,
  int1_field ,
  sum(int1_field) as subtotal ,
  int2_field ,
  avg(int2_field as abap.dec( 8, 2 )) as average ,
  count(* ) as countrow ,
  min(int1_field) as minimum ,
  max(int1_field) as maximum
    
} where int1_field <=50
     group by id,  int1_field ,int2_field
   having (sum(int1_field)) >20
