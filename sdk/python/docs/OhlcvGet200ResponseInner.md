# OhlcvGet200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start** | **datetime** | Start time of the candle | [optional] 
**end** | **datetime** | End time of the candle | [optional] 
**duration_minutes** | **int** | Duration of the candle in minutes | [optional] 
**open** | **float** | Opening price of the candle | [optional] 
**high** | **float** | Highest price during the candle period | [optional] 
**low** | **float** | Lowest price during the candle period | [optional] 
**close** | **float** | Closing price of the candle | [optional] 
**volume** | **float** | Volume traded during the candle period | [optional] 
**count** | **int** | Number of trades during the candle period | [optional] 

## Example

```python
from openapi_client.models.ohlcv_get200_response_inner import OhlcvGet200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of OhlcvGet200ResponseInner from a JSON string
ohlcv_get200_response_inner_instance = OhlcvGet200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(OhlcvGet200ResponseInner.to_json())

# convert the object into a dict
ohlcv_get200_response_inner_dict = ohlcv_get200_response_inner_instance.to_dict()
# create an instance of OhlcvGet200ResponseInner from a dict
ohlcv_get200_response_inner_from_dict = OhlcvGet200ResponseInner.from_dict(ohlcv_get200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


