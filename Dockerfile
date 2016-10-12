FROM buildpack-deps:xenial
# Clang
RUN apt-get update && apt-get install -y clang
ENV CC clang
ENV CXX clang++
RUN ln -s /bin/cc /bin/clang
RUN ln -s /bin/cxx /bin/clang++
