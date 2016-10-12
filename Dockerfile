FROM alpine:edge
# Clang
RUN apk add --no-cache clang wget ca-certificates make libstdc++ binutils libc-dev libgcc fortify-headers isl libgomp libatomic pkgconf musl gmp mpc1 mpfr3 zlib && update-ca-certificates
ENV CC clang
ENV CXX clang++
RUN ln -s /bin/cc /bin/clang
RUN ln -s /bin/cxx /bin/clang++
