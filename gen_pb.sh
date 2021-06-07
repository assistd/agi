#!/bin/bash

# ref https://developers.google.com/protocol-buffers/docs/gotutorial
# go install google.golang.org/protobuf/cmd/protoc-gen-go

list=(
./core/stream/stream.proto
./core/image/image.proto
./core/log/log_pb/log.proto
./core/os/android/apk/apk.proto
./core/os/android/keycodes.proto
./core/os/device/gpu_counter_descriptor.proto
./core/os/device/device.proto
./core/os/device/bind/bind.proto
./core/data/pod/pod.proto
./core/data/protoutil/testprotos/testprotos.proto
)

for i in "${list[@]}"; do
    protoc --go_out=./ $i
done

cp -frp github.com/google/gapid/core ./
rm -rf github.com
