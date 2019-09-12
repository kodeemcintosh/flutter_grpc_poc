
## Assumes user is on MacOS, if other OS, please change PROTO_ROOT_DIR to the path of protobuf installation
PROTO_ROOT_DIR = $(shell brew --prefix)/Cellar/protobuf/3.6.0/include
PROJECT_NAME = hello-grpc

## Dart requires you to manually ship all google provided proto files too.
gen: gen_go gen_dart

gen_go:
	# protoc -I routeguide/ routeguide/route_guide.proto --go_out=plugins=grpc:
	protoc -I **/*.proto --go_out=plugins=grpc **/*.proto

gen_dart:
	# from tutorial
	# @mkdir -p model/gen/ship/dart
	# @protoc -I=model/protodefs --dart_out=grpc:model/gen/ship/dart model/protodefs/*.proto
	# @protoc -I$(PROTO_ROOT_DIR) --dart_out=model/gen/ship/dart $(PROTO_ROOT_DIR)/google/protobuf/*.proto
	# from kodee, but need to research how to use protoc recursively or use prototool
	protoc -I **/*.proto --dart_out=plugins=grpc **/*.proto


build: get gen