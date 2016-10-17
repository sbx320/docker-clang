FROM buildpack-deps:xenial
# Clang
RUN apt-get update && apt-get install -y g++ subversion cmake && \
  mkdir /src && \
  cd /src && \
  svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm && \
  cd llvm/tools && \
  svn co http://llvm.org/svn/llvm-project/cfe/trunk clang && \
  cd clang/tools && \
  svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra && \
  cd ../../../projects && \
  svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt && \
  cd /src && \
  mkdir build && \
  cd build && \
  cmake -DCMAKE_BUILD_TYPE=Release ../llvm && \
  cmake --build . && \
  cmake --build . --target install && \
  rm -rf /src && \
  apt-get clean
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
  
# Setup clang as default compiler
ENV CC clang
ENV CXX clang++
RUN ln -s /bin/cc /bin/clang
RUN ln -s /bin/cxx /bin/clang++
