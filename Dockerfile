FROM alpine:edge
# Clang
RUN apk add --no-cache clang wget ca-certificates make && update-ca-certificates
ENV cc clang
ENV cxx clang++
