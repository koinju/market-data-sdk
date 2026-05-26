# Koinju Market Data API

This repository contains the Open Api specification and facilities to generate client libraries.


The OpenAPI specification is located in the `market-data.yaml` file.

## SDK

Python SDK is in `sdk/python` directory.

For other languages see the [Generate Client Libraries](#generate-client-libraries) section.`

## API documentation

#### Official Doc
The API documentation is available [here](https://docs.koinju.io).

### Online Swagger viewer
As a quick solution you can display open api spec in [online swagger editor](https://editor.swagger.io/)

## <a name="generate-client-libraries"></a> Generate Client Libraries 
The easiest way is to use the dockerised image of the `openapi-generator`

```bash
docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate \
    -i /local/market-data.yaml \
    -g <GENERATOR_NAME> \
    -o /local/sdk/python
```
List of supported languages can be found [here](https://openapi-generator.tech/docs/generators/).

We put the example for python in `build-python.library.sh` script

## SDK Examples
### Python
```python
from datetime import timedelta
from dateutil import parser
from typing import List

from sdk.python.openapi_client.api.market_data_api import MarketDataApi
from sdk.python.openapi_client.api_client import ApiClient
from sdk.python.openapi_client.configuration import Configuration
from sdk.python.openapi_client.models.ohlcv_get200_response_inner import OhlcvGet200ResponseInner


config = Configuration(
    username="<API_KEY>",
    password="<API_SECRET",
)
with ApiClient(configuration=config) as api_client:
    api_instance = MarketDataApi(api_client)
    response: List[OhlcvGet200ResponseInner] = api_instance.ohlcv_get(
        exchange="binance",
        market="BTC-USDT",
        start_datetime=parser.parse("2023-01-01T00:00:00Z"),
        end_datetime=parser.parse("2023-01-02T00:00:00Z"),
        candle_duration_in_minutes=1,
    )
    fc = response[0]
    print(f"Got {len(response)}  candles of {fc.duration_minutes}m from {fc.start} to {response[-1].start}")
    print(f"First candle from {fc.start} o:{fc.open} h:{fc.high} l:{fc.low} v:{fc.volume}")
```