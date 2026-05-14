@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'simple customer cds  view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_cds_cust2 
  as select from zvkfeb01_dt_cust
  
{
    key cust_id ,
     name ,
     company_name ,
     country ,
     city ,
     mobile 
    
    
}
