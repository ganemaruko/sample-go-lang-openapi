# sample-go-lang-openapi

OpenAPIでgolangのclientコードを生成し、自作ライブラリから呼び出すまでのサンプルコード

## フォルダ構成

```sh
.
├── README.md
├── generate_openapi_code.sh
├── go-api-client
├── go.work
├── my-lib
└── openapi
```

### generate_openapi_code.sh

[openapi generator](https://github.com/OpenAPITools/openapi-generator)呼び出し用シェルファイル

### go-api-client

OpenAPIで自動生成されるgoのapi呼び出し用コード群

### openapi

OpenAPIのyamlや[go client template](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator/src/main/resources/go)が入ったフォルダ

### my-lib

何かしらの自作ライブラリ  
この内部でOpenAPIで定義されたclientコードを利用することを想定しています

## References

- [go client template](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator/src/main/resources/go)
