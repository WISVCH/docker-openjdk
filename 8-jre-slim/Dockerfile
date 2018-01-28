FROM openjdk:8-jre-slim

RUN curl -so /usr/local/share/ca-certificates/wisvch.crt https://ch.tudelft.nl/certs/wisvch.crt && \
    chmod 0644 /usr/local/share/ca-certificates/wisvch.crt && \
    update-ca-certificates
