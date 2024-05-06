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
