APP=fitledger

build:
	@go build -o $(APP) .

run:
	@go run main.go

test:
	@go test ./...

clean:
	@echo "  >  Cleaning build cache"
	@GOPATH=$(GOPATH) GOBIN=$(GOBIN) go clean
	@echo "  >  Removing $(APP) executable"
	@rm $(APP) 2> /dev/null | true

lint:
	@golangci-lint run -v -c golangci.yaml