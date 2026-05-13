@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create  left outer  join cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity YAB_LEFT_JOIN_CDS 
  as select from zvkfeb01_dt_cust as cust
   left outer join zvkfeb01_dt_so as header
    on cust.cust_id = header.buyer 
    left outer join zvkfeb01_dt_soit as sitem
     on header.soid = sitem.soid
     left outer join zvkfeb01_dt_prod as product
      on sitem.product = product.prod_id
{
   key cust.cust_id as custemarid ,
   key header.soid  as salesid ,
   key sitem.item_id as salesitemid ,
   key product.prod_id as productid ,
       cust.name ,
       cust.company_name ,
       cust.country ,
       cust.city ,
       cust.mobile,
       header.buyer ,
       header.created_by ,
       header.created_on ,
       header.sales_person ,
       header.sales_manager ,
       header.sales_timestamp ,
       header.changed_by ,
       header.changed_on ,
       header.approval_timestamp ,
       header.url ,
       sitem.product ,
 @Semantics.amount.currencyCode:'currency'      
       sitem.amount ,
       sitem.currency ,
       sitem.image_item ,
       product.descpt ,
 @Semantics.amount.currencyCode: 'currency'      
       product.price 
       
}
