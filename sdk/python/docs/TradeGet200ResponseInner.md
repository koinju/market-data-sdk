# TradeGet200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | **str** | The name of the exchange | [optional] 
**market** | **str** | The universal market symbol | [optional] 
**side** | **str** | The side of the trade (buy or sell) | [optional] 
**quantity** | **float** | The quantity of the asset traded | [optional] 
**price** | **float** | The price at which the trade occurred | [optional] 
**timestamp** | **datetime** | The datetime when the trade occurred | [optional] 
**trade_id** | **str** | Exchange provided unique identifier for the trade | [optional] 

## Example

```python
from openapi_client.models.trade_get200_response_inner import TradeGet200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of TradeGet200ResponseInner from a JSON string
trade_get200_response_inner_instance = TradeGet200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(TradeGet200ResponseInner.to_json())

# convert the object into a dict
trade_get200_response_inner_dict = trade_get200_response_inner_instance.to_dict()
# create an instance of TradeGet200ResponseInner from a dict
trade_get200_response_inner_from_dict = TradeGet200ResponseInner.from_dict(trade_get200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


