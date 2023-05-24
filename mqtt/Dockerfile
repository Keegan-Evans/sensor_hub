FROM eclipse-mosquitto:latest

COPY mosquitto.conf /mosquito/config/mosquitto.conf

RUN mosquitto_sub -h 11.0.0.1 -t test/# -C 3
