@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create arithmatic function cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_arithmatic_fn_cds 
   as select from zvkfeb01_dt_demo
{
     key id ,
    int1_field ,
    int2_field ,
    int4_field ,
//    int8_field ,
    int2_field + int4_field as addistion_fn ,
//    int8_field - int4_field as subsraction_fn ,
    int2_field * int1_field as multiplication_fn ,
    int4_field / int1_field as divistion_fn
}
