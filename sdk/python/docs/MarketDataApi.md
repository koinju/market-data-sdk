# openapi_client.MarketDataApi

All URIs are relative to *https://api.koinju.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**market_future_get**](MarketDataApi.md#market_future_get) | **GET** /market/future | Get Future Markets
[**market_option_active_get**](MarketDataApi.md#market_option_active_get) | **GET** /market/option/active | Get active Option Markets
[**market_option_all_get**](MarketDataApi.md#market_option_all_get) | **GET** /market/option/all | Get all Option Markets
[**market_spot_get**](MarketDataApi.md#market_spot_get) | **GET** /market/spot | Get Spot Markets
[**ohlcv_get**](MarketDataApi.md#ohlcv_get) | **GET** /ohlcv | Get OHLCV for a Market
[**trade_get**](MarketDataApi.md#trade_get) | **GET** /trade | Get public trade for a Market


# **market_future_get**
> List[MarketFuture] market_future_get()

Get Future Markets

Returns expirable future and perpetual swaps.

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.market_future import MarketFuture
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.koinju.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.koinju.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.MarketDataApi(api_client)

    try:
        # Get Future Markets
        api_response = api_instance.market_future_get()
        print("The response of MarketDataApi->market_future_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketDataApi->market_future_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[MarketFuture]**](MarketFuture.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_option_active_get**
> List[MarketOption] market_option_active_get()

Get active Option Markets

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.market_option import MarketOption
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.koinju.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.koinju.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.MarketDataApi(api_client)

    try:
        # Get active Option Markets
        api_response = api_instance.market_option_active_get()
        print("The response of MarketDataApi->market_option_active_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketDataApi->market_option_active_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[MarketOption]**](MarketOption.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_option_all_get**
> List[MarketOption] market_option_all_get(exchange, expired_before)

Get all Option Markets

This endpoint returns all option markets, including both active and expired options.
It is useful for retrieving a comprehensive list of all options available across exchanges.

This endpoint is limited to 10000 instruments that expired before the `expired_before` parameter in descending order of expiration.


### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.market_option import MarketOption
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.koinju.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.koinju.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.MarketDataApi(api_client)
    exchange = 'exchange_example' # str | Filter by exchange name. Example: 'deribit', 'delta' 
    expired_before = '2013-10-20T19:20:30+01:00' # datetime | Filter options that expired before a specific date. Format: ISO 8601 date-time (e.g., '2023-12-31T23:59:59Z'). 

    try:
        # Get all Option Markets
        api_response = api_instance.market_option_all_get(exchange, expired_before)
        print("The response of MarketDataApi->market_option_all_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketDataApi->market_option_all_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange** | **str**| Filter by exchange name. Example: &#39;deribit&#39;, &#39;delta&#39;  | 
 **expired_before** | **datetime**| Filter options that expired before a specific date. Format: ISO 8601 date-time (e.g., &#39;2023-12-31T23:59:59Z&#39;).  | 

### Return type

[**List[MarketOption]**](MarketOption.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **market_spot_get**
> List[MarketSpot] market_spot_get()

Get Spot Markets

This endpoint allows you to obtain the full list of spot markets

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.market_spot import MarketSpot
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.koinju.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.koinju.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.MarketDataApi(api_client)

    try:
        # Get Spot Markets
        api_response = api_instance.market_spot_get()
        print("The response of MarketDataApi->market_spot_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketDataApi->market_spot_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[MarketSpot]**](MarketSpot.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | All spot markets |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ohlcv_get**
> List[OhlcvGet200ResponseInner] ohlcv_get(exchange, market, candle_duration_in_minutes, start_datetime, end_datetime)

Get OHLCV for a Market

This endpoint retrieves OHLCV (Open, High, Low, Close, Volume) data for a specific market.

It includes spot, future, and option markets.

This endpoint is limited to 10000 candles per request.


### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.ohlcv_get200_response_inner import OhlcvGet200ResponseInner
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.koinju.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.koinju.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.MarketDataApi(api_client)
    exchange = 'exchange_example' # str | The name of the exchange to filter by
    market = 'market_example' # str | The universal market symbol to filter by
    candle_duration_in_minutes = 56 # int | The time interval for the candles in minutes. The value can be any amount of minutes: - 1: 1 minute - 5: 5 minutes - 60: 1 hour - 1440: 1 day 
    start_datetime = '2013-10-20T19:20:30+01:00' # datetime | The start time for the OHLCV data in ISO 8601 format (e.g., '2023-01-01T00:00:00Z') or any format that can be parsed by the `parseDateTime64BestEffort` 
    end_datetime = '2013-10-20T19:20:30+01:00' # datetime | The end time for the OHLCV data in ISO 8601 format (e.g., '2023-01-02T00:00:00Z') or any format that can be parsed by the `parseDateTime64BestEffort` 

    try:
        # Get OHLCV for a Market
        api_response = api_instance.ohlcv_get(exchange, market, candle_duration_in_minutes, start_datetime, end_datetime)
        print("The response of MarketDataApi->ohlcv_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketDataApi->ohlcv_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange** | **str**| The name of the exchange to filter by | 
 **market** | **str**| The universal market symbol to filter by | 
 **candle_duration_in_minutes** | **int**| The time interval for the candles in minutes. The value can be any amount of minutes: - 1: 1 minute - 5: 5 minutes - 60: 1 hour - 1440: 1 day  | 
 **start_datetime** | **datetime**| The start time for the OHLCV data in ISO 8601 format (e.g., &#39;2023-01-01T00:00:00Z&#39;) or any format that can be parsed by the &#x60;parseDateTime64BestEffort&#x60;  | 
 **end_datetime** | **datetime**| The end time for the OHLCV data in ISO 8601 format (e.g., &#39;2023-01-02T00:00:00Z&#39;) or any format that can be parsed by the &#x60;parseDateTime64BestEffort&#x60;  | 

### Return type

[**List[OhlcvGet200ResponseInner]**](OhlcvGet200ResponseInner.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trade_get**
> List[TradeGet200ResponseInner] trade_get(exchange, market, start_datetime, end_datetime)

Get public trade for a Market

This endpoint retrieves public trade data for a specific market.

It includes spot, future, and option markets.

This endpoint is limited to 10000 trades per request.


### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.trade_get200_response_inner import TradeGet200ResponseInner
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.koinju.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.koinju.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.MarketDataApi(api_client)
    exchange = 'exchange_example' # str | The name of the exchange to filter by
    market = 'market_example' # str | The universal market symbol to filter by
    start_datetime = '2013-10-20T19:20:30+01:00' # datetime | The start time for the trade data in ISO 8601 format (e.g., '2023-01-01T00:00:00Z') or any format that can be parsed by the `parseDateTime64BestEffort` 
    end_datetime = '2013-10-20T19:20:30+01:00' # datetime | The end time for the trade data in ISO 8601 format (e.g., '2023-01-02T00:00:00Z') or any format that can be parsed by the `parseDateTime64BestEffort` 

    try:
        # Get public trade for a Market
        api_response = api_instance.trade_get(exchange, market, start_datetime, end_datetime)
        print("The response of MarketDataApi->trade_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketDataApi->trade_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange** | **str**| The name of the exchange to filter by | 
 **market** | **str**| The universal market symbol to filter by | 
 **start_datetime** | **datetime**| The start time for the trade data in ISO 8601 format (e.g., &#39;2023-01-01T00:00:00Z&#39;) or any format that can be parsed by the &#x60;parseDateTime64BestEffort&#x60;  | 
 **end_datetime** | **datetime**| The end time for the trade data in ISO 8601 format (e.g., &#39;2023-01-02T00:00:00Z&#39;) or any format that can be parsed by the &#x60;parseDateTime64BestEffort&#x60;  | 

### Return type

[**List[TradeGet200ResponseInner]**](TradeGet200ResponseInner.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

