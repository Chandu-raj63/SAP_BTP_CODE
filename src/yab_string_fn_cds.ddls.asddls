@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create string function cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_string_fn_cds 
    as select from zvkfeb01_dt_demo 
{
  key id ,
  char_field1,
  char_field2 ,
  char_field3 ,
  char_field4 ,
  char_field5 ,
  concat(char_field1,char_field2) as concat_fn ,
  upper(char_field2) as upper_fn ,
  substring(char_field4,2,3) as substring_fn ,
  lpad(char_field3,10,'A') as lpad_fn ,
  ltrim(char_field3,'A') as ltrim ,
  lower(char_field5) as lower_fn ,
  length(char_field1) as length_fn ,
  rpad(char_field3,8,'*') as rpad_fn ,
  rtrim(char_field1,'1') as rtrim_fn
  
    
} where id between '00031' and '00039'
