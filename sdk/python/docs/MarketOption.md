# MarketOption


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | **str** | The name of the exchange | [optional] 
**market_symbol** | **str** | Universal name of market | [optional] 
**expiration** | **datetime** | UTC time of the option expiration | [optional] 
**underlying_asset** | **str** | Universal name of the underlying asset | [optional] 
**quote_asset** | **str** | Universal name of the quote asset | [optional] 
**settling_asset** | **str** | Universal name of the asset the option is settled in | [optional] 
**denomination_asset** | **str** | Universal name of the asset the option is denominated in | [optional] 
**contract_size** | **float** | Contract size in denomination_asset | [optional] 
**contract_type** | **str** | Type of contract (LINEAR or INVERSE) | [optional] 
**option_type** | **str** | Type of option (CALL or PUT) | [optional] 
**exchange_symbol** | **str** | Name of the market on the exchange (as referenced by the exchange API) | [optional] 

## Example

```python
from openapi_client.models.market_option import MarketOption

# TODO update the JSON string below
json = "{}"
# create an instance of MarketOption from a JSON string
market_option_instance = MarketOption.from_json(json)
# print the JSON string representation of the object
print(MarketOption.to_json())

# convert the object into a dict
market_option_dict = market_option_instance.to_dict()
# create an instance of MarketOption from a dict
market_option_from_dict = MarketOption.from_dict(market_option_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


