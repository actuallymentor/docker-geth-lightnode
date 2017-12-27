#!/bin/bash
docker run \
			-p 30303:30303 \
			-p 30303:30303/udp \
			--mount type=volume,source=etherchain,destination=/root/etherchain \
			actuallymentor/geth-lightnode