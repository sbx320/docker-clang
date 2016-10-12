FROM alpine:edge
# Clang
RUN apk add --no-cache clang wget ca-certificates && update-ca-certificates
# Premake 5
RUN wget https://github.com/sbx320/premake5-travis/blob/master/premake5?raw=true -O /usr/bin/premake5 && \
    chmod +x /usr/bin/premake5
