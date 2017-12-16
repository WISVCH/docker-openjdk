FROM openjdk:9-jdk

RUN curl -so /tmp/wisvch.crt https://ch.tudelft.nl/certs/wisvch.crt && \
    keytool -noprompt -cacerts -storepass changeit -importcert -alias wisvch -file /tmp/wisvch.crt && \
    rm /tmp/wisvch.crt
