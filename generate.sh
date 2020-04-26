#!/bin/bash

for tag in 8-jdk 8-jre 8-jre-slim 11-jdk 11-jre 11-jre-slim 14-jdk; do
	echo $tag
	mkdir -p $tag
	cat > $tag/Dockerfile <<EOF
FROM openjdk:$tag-buster

ADD https://ch.tudelft.nl/certs/wisvch.crt /usr/local/share/ca-certificates/wisvch.crt
RUN chmod 0644 /usr/local/share/ca-certificates/wisvch.crt && \\
    update-ca-certificates
ADD https://search.maven.org/remote_content?g=com.datadoghq&a=dd-java-agent&v=LATEST /opt/datadog/dd-java-agent.jar
RUN chmod 0644 /opt/datadog/dd-java-agent.jar
EOF
done
