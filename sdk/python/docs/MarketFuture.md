# MarketFuture


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | **str** | The name of the exchange | [optional] 
**market_symbol** | **str** | Universal name of market | [optional] 
**underlying_asset** | **str** | Universal name of the underlying asset | [optional] 
**quote_asset** | **str** | Universal name of the quote asset | [optional] 
**settling_asset** | **str** | Universal name of the asset the future is settled in | [optional] 
**denomination_asset** | **str** | Universal name of the asset the future is denominated in | [optional] 
**expiration** | **datetime** | UTC time of the contract expiration. Null for perpetual contracts except binance. Not-null for perpetual contracts that were delivered on delisting or not expired binance contracts.  | [optional] 
**contract_size** | **float** | Contract size in denomination_asset | [optional] 
**contract_type** | **str** | Type of contract (LINEAR or INVERSE) | [optional] 
**future_type** | **str** | Type of future (PERPETUAL or EXPIRING) | [optional] 

## Example

```python
from openapi_client.models.market_future import MarketFuture

# TODO update the JSON string below
json = "{}"
# create an instance of MarketFuture from a JSON string
market_future_instance = MarketFuture.from_json(json)
# print the JSON string representation of the object
print(MarketFuture.to_json())

# convert the object into a dict
market_future_dict = market_future_instance.to_dict()
# create an instance of MarketFuture from a dict
market_future_from_dict = MarketFuture.from_dict(market_future_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


