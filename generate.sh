# rm -f db/*.go
# protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative db/proto/user.proto
# protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative db/proto/otp.proto
# protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative db/proto/server.proto

export SRC_DIR=.
export DST_DIR=../proto/

# rm -r ../pb/app-protopb/

protoc -I=$SRC_DIR --go_out=plugins=$DST_DIR --go-grpc_out=$DST_DIR $SRC_DIR/otp.proto
protoc -I=$SRC_DIR --go_out=plugins=$DST_DIR --go-grpc_out=$DST_DIR $SRC_DIR/server.proto
protoc -I=$SRC_DIR --go_out=plugins=$DST_DIR --go-grpc_out=$DST_DIR $SRC_DIR/user.proto