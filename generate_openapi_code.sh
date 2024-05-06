# move to the directory of this script
cd `dirname $0`
pwd

# generate openapi code
docker run --rm \
    -v "${PWD}/go-api-client:/local" \
    -v "${PWD}/openapi/:/usr/openapi" \
    openapitools/openapi-generator-cli generate \
    -i /usr/openapi/main/openapi.yml \
    -g go -o /local \
    -t /usr/openapi/template/go