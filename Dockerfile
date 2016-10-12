FROM alpine:edge
# Clang
RUN apk add --no-cache clang wget ca-certificates make && update-ca-certificates
ENV CC clang
ENV CXX clang++
RUN ln -s /bin/cc /bin/clang
RUN ln -s /bin/cxx /bin/clang++
