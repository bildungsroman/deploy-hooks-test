package main

import (
	"context"
	"fmt"
	"github.com/aws/aws-lambda-go/lambda"
)

func Handler(ctx context.Context, event interface{}) (string, error) {
	fmt.Println(event)

	return "YAY!", nil
}

func main() {
	lambda.Start(Handler)
}
