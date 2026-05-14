@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'simple sales order cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_cds_slo2
 as select from zvkfeb01_dt_so
{
    key soid ,
    buyer ,
    sales_person ,
    sales_timestamp ,
    sales_manager ,
    created_by ,
    created_on 
    
}
