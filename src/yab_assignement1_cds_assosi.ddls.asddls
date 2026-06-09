@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create a cds view   total net amount us assosiation'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_assignement1_cds_assosi 
    as select from zvkfeb01_dt_so as header
     association[0..*] to zvkfeb01_dt_soit as item
      on header.soid = item.soid
{
   header.soid,
   header.buyer as customer ,
   item.currency  as currency ,
 @Semantics.amount.currencyCode: 'currency'  
//   item.amount as amount ,
// @Semantics.amount.currencyCode: 'currency' 
  sum( item.amount ) as totalamount ,
  item
  
    
} group by  header.soid ,header.buyer,item.currency
