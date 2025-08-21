docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate \
    -i /local/market-data.yaml \
    -g python \
    -o /local/sdk/python