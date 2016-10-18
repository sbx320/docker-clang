FROM buildpack-deps:xenial
# Clang
RUN add-apt-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial main" && \
  add-apt-repository "deb-src http://apt.llvm.org/xenial/ llvm-toolchain-xenial main" && \
  wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
  
RUN apt-get update && apt-get install -y clang-4.0 && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
  
# Setup clang as default compiler
ENV CC clang
ENV CXX clang++
RUN ln -s /bin/cc /bin/clang
RUN ln -s /bin/cxx /bin/clang++
