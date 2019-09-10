package main

import (
  "fmt"
  "log"
	"net"

	pb "github.com/kvmac/flutter_grpc_poc/protobuf/chat_service/chat"
	"github.com/kvmac/flutter_grpc_poc/api"
	"google.golang.org/grpc"
)

func main() {
  // create a listener on TCP port 7777
  lis, err := net.Listen("tcp", fmt.Sprintf(":%d", 7777))
  if err != nil {
    log.Fatalf("failed to listen: %v", err)
	}
	
	// create a server instance
	s := api.Server{}
	
	// create a gRPC server object
	grpcServer := grpc.NewServer()
	
	// attach the Ping service to the server
	pb.RegisterChatServer(grpcServer, &s)
	
	// start the server
  if err := grpcServer.Serve(lis); err != nil {
    log.Fatalf("failed to serve: %s", err)
  }
}