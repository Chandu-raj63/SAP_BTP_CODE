@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create string function cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_string_fn_cds2 as select from yab_string_fn_cds1
{
    key id,
    char_field1,
    char_field2,
    char_field3,
    char_field4,
    char_field5,
    string_field,
    sstring_field,
    concat_fn,
    upper_fn,
    substring_fn,
    lpad_fn,
    ltrim_fn
} 
