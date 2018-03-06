#!/bin/bash

for tag in 8-jdk 8-jre 8-jre-slim 9-jdk 9-jre 9-jre-slim; do
	echo $tag
	mkdir -p $tag
	cat > $tag/Dockerfile <<EOF
FROM openjdk:$tag

ADD https://ch.tudelft.nl/certs/wisvch.crt /usr/local/share/ca-certificates/wisvch.crt
RUN chmod 0644 /usr/local/share/ca-certificates/wisvch.crt && \\
    update-ca-certificates
ADD https://search.maven.org/remote_content?g=com.datadoghq&a=dd-java-agent&v=LATEST /opt/datadog/dd-java-agent.jar
RUN chmod 0644 /opt/datadog/dd-java-agent.jar
EOF
done
