@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create numeric function cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_numeric_fn_cds
    as select from zvkfeb01_dt_demo
{
   key id ,
   dec_field ,
   int2_field ,
   int4_field ,
   int8_field ,
   abs(int2_field)  as abstract ,
   ceil(dec_field) as ceil ,
   floor(dec_field) as floor ,
   round(dec_field,2) as round ,
   mod(int4_field,int2_field) as mod 
  
}
