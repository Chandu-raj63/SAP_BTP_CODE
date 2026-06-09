@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'create  left outer  join cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_left_join_cds2 
  as select from zvkfeb01_dt_cust as cust
   left outer join zvkfeb01_dt_so as header
    on cust.cust_id = header.buyer 
{
   key cust.cust_id as custemarid ,
   key header.soid  as salesid ,
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
       header.url 
}
