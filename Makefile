BINARY_NAME=mu
CMD_DIR=./cmd/mu

build:
	go build -o ${BINARY_NAME} ${CMD_DIR}/main.go

run: build
	./${BINARY_NAME}

clean:
	go clean
	rm ${BINARY_NAME}

test:
	go test ./...

test_coverage:
	go test ./... -coverprofile=coverage.out

dep:
	go mod download

vet:
	go vet

lint:
	golangci-lint run --enable-all
