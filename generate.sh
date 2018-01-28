#!/bin/bash

for tag in 8-jdk 8-jre 8-jre-slim 9-jdk 9-jre 9-jre-slim; do
	echo $tag
	mkdir -p $tag
	cat > $tag/Dockerfile <<EOF
FROM openjdk:$tag

RUN curl -so /usr/local/share/ca-certificates/wisvch.crt https://ch.tudelft.nl/certs/wisvch.crt && \\
    chmod 0644 /usr/local/share/ca-certificates/wisvch.crt && \\
    update-ca-certificates
EOF
done