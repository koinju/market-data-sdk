# MarketSpot


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | **str** | The name of the exchange | [optional] 
**market_symbol** | **str** | Universal name of market | [optional] 
**base_asset** | **str** | Universal name of the base asset | [optional] 
**quote_asset** | **str** | Universal name of the quote asset | [optional] 
**exchange_specific_symbol** | **str** | Name of the market on the exchange (as referenced by the exchange API) | [optional] 

## Example

```python
from openapi_client.models.market_spot import MarketSpot

# TODO update the JSON string below
json = "{}"
# create an instance of MarketSpot from a JSON string
market_spot_instance = MarketSpot.from_json(json)
# print the JSON string representation of the object
print(MarketSpot.to_json())

# convert the object into a dict
market_spot_dict = market_spot_instance.to_dict()
# create an instance of MarketSpot from a dict
market_spot_from_dict = MarketSpot.from_dict(market_spot_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


