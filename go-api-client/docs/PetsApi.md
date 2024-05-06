# \PetsApi

All URIs are relative to *http://petstore.swagger.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreatePets**](PetsApi.md#CreatePets) | **Post** /pets | Create a pet
[**ListPets**](PetsApi.md#ListPets) | **Get** /pets | List all pets
[**ShowPetById**](PetsApi.md#ShowPetById) | **Get** /pets/{petId} | Info for a specific pet



## CreatePets

> CreatePets(ctx).Pet(pet).Execute()

Create a pet

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	pet := *openapiclient.NewPet(int64(123), "Name_example") // Pet | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.PetsApi.CreatePets(context.Background()).Pet(pet).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PetsApi.CreatePets``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCreatePetsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pet** | [**Pet**](Pet.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListPets

> []Pet ListPets(ctx).Limit(limit).Execute()

List all pets

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	limit := int32(56) // int32 | How many items to return at one time (max 100) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PetsApi.ListPets(context.Background()).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PetsApi.ListPets``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListPets`: []Pet
	fmt.Fprintf(os.Stdout, "Response from `PetsApi.ListPets`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiListPetsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int32** | How many items to return at one time (max 100) | 

### Return type

[**[]Pet**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ShowPetById

> Pet ShowPetById(ctx, petId).Execute()

Info for a specific pet

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	petId := "petId_example" // string | The id of the pet to retrieve

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PetsApi.ShowPetById(context.Background(), petId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PetsApi.ShowPetById``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ShowPetById`: Pet
	fmt.Fprintf(os.Stdout, "Response from `PetsApi.ShowPetById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**petId** | **string** | The id of the pet to retrieve | 

### Other Parameters

Other parameters are passed through a pointer to a apiShowPetByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Pet**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

