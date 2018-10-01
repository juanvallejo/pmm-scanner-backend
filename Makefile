all:
	mkdir -p bin && go build -o bin/scanner cmd/scanner.go
