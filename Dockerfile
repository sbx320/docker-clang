FROM alpine:edge
# Clang
RUN apk add --no-cache clang wget ca-certificates && update-ca-certificates
RUN mkdir /src && \
    wget https://github.com/sbx320/premake5-travis/blob/master/premake5?raw=true -O /src/premake5 && \
    chmod +x /src/premake5
