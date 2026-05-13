@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create a cds view using shead@sitem total net amount'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_assignement1_cds  
   as select from zvkfeb01_dt_so as sheader
    inner join zvkfeb01_dt_soit as  sitem 
       on sheader.soid = sitem.soid
{
    sheader.buyer as customername,
    sitem.currency as currency ,
 @Semantics.amount.currencyCode: 'currency' 
    sum(sitem.amount) as totalamount
  
    
} group by sheader.buyer, sitem.currency
  
