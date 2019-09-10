package api

import (
	"log"
	"golang.org/x/net/context"

	pb "github.com/kvmac/flutter_grpc_poc/protobuf/chat_service/chat"
)

type Server struct {}

// calls the grpc protobuf generated code
func (s *Server) GetMessage(ctx context.Context, in *pb.MessageRequest) (*pb.MessageResponse, error) {
	log.Printf("Message: %s", in.UserInput)
	log.Printf("Receive message from %s", in.UserId)
	log.Printf("Chat Id is %s", in.ChatId)
	log.Printf("Conversation Id is %s", in.ConversationId)

	return &pb.MessageResponse{ServerResponse: in.UserInput + ", thanks!"}, nil
}
