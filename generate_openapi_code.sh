# move to the directory of this script
cd `dirname $0`
pwd

# generate openapi code
docker run --rm \
    \ # 生成したコードをホスト側にコピーするための設定\
    -v "${PWD}/go-api-client:/local" \
    \ # openapiの定義ファイルをコンテナ内にマウントするための設定\
    -v "${PWD}/openapi/:/usr/openapi" \
    \ # openapi-generator-cliのコンテナイメージを指定する\
    openapitools/openapi-generator-cli generate \
    \ # openapi-generator-cliの引数を指定する\
    -i /usr/openapi/main/openapi.yml \
    \ # 生成するコードの言語を指定する\
    -g go -o /local \
    \ # 生成するコードのテンプレートを指定する\
    -t /usr/openapi/template/go

# format code.
goimports -w ./