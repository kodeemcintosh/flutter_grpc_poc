
protobuf: proto-go proto-dart

proto-go:
	# protoc -I routeguide/ routeguide/route_guide.proto --go_out=plugins=grpc:
	protoc -I **/*.proto --go_out=plugins=grpc **/*.proto

proto-dart:
	protoc -I **/*.proto --dart_out=plugins=grpc **/*.proto