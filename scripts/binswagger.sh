#!/bin/sh
cd frontend
# go-bindata -ignore=node_modules -pkg assets ./...
go-bindata -pkg assets public/... build/...
mv bindata.go ../pkg/assets
gofmt -s -w ../pkg/assets/bindata.go