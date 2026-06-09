@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'simple sales order cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity yab_cds_slo1 
as select from zvkfeb01_dt_so

{
    key soid as Soid,
    buyer as Buyer,
    sales_person as SalesPerson,
    sales_timestamp as SalesTimestamp,
    sales_manager as SalesManager,
    approval_timestamp as ApprovalTimestamp,
    created_by as CreatedBy,
    created_on as CreatedOn,
    changed_by as ChangedBy,
    changed_on as ChangedOn,
    url as Url
    
}
