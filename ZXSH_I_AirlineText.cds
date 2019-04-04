@AbapCatalog.sqlViewName: 'sZXSH_IAIRLINET'
@ClientDependent: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airline Name'
@ObjectModel.dataCategory: #TEXT
@Analytics.dataExtraction.enabled: true
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'Airline'
define view ZXSH_I_AirlineText as select from scarr {

    key scarr.carrid as Airline,
    
//    @Semantics.language: true
//    key spras as Language,

    @Semantics.text: true
    @EndUserText.label: 'Airline Name'
    scarr.carrname as AirlineName
} 
  
 