@AbapCatalog.sqlViewName: 'ZXSHCAIRLINEQ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airline'
@VDM.viewType: #CONSUMPTION
@OData.publish: true
define view ZXSHC_AIRLINEQUERY as select from ZXSHI_AIRLINE {
    key ZXSHI_AIRLINE.Airline, 
    ZXSHI_AIRLINE.AirlineLocalCurrency, 
    ZXSHI_AIRLINE.AirlineURL
} 
  
  
 