@AbapCatalog.sqlViewName: 'ZXSHIAIRLINE'
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airline'
@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION
@Analytics.dataExtraction.enabled: true
@ObjectModel.representativeKey: 'Airline'
define view ZXSHI_Airline as select from scarr
association [0..1] to ZXSH_I_AirlineText as _Text
on $projection.Airline = _Text.Airline {

    key scarr.carrid as Airline,
    
    @Semantics.currencyCode: true
    scarr.currcode as AirlineLocalCurrency,
    
    @Semantics.url: true
    scarr.url as AirlineURL,
    
    _Text.AirlineName
}