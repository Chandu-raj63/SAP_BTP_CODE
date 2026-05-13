@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create aggregate function cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_aggregate_fn_cds 
     as select from zvkfeb01_dt_demo
{ 
  int1_field ,
  int2_field ,
  sum( int1_field) as subtotal ,
  count(distinct int1_field) as countrow ,
  avg(int2_field as abap.dec( 8, 1 ) ) as average ,
  int4_field ,
  min(int4_field) as minimum ,
  max(int4_field) as maximum
    
} where int1_field  <= 50
  group by  int1_field ,int2_field ,int4_field
   having (sum(int1_field)) >10
