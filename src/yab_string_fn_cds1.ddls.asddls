@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create string function cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_string_fn_cds1 
    as select from zvkfeb01_dt_demo
{
  key id ,
  char_field1 ,
  char_field2 ,
  char_field3 ,
  char_field4 ,
  char_field5 ,
  string_field ,
  sstring_field ,
  concat(char_field1,char_field2) as concat_fn ,
  upper(char_field2) as upper_fn ,
  substring(char_field4,3,5) as substring_fn ,
  lpad(char_field3,8,'*') as lpad_fn ,
  ltrim(char_field3,'A') as ltrim_fn
  
    
} 
