FROM greyltc/archlinux
# Clang
RUN pacman -S --noconfirm clang
ENV CC clang
ENV CXX clang++
ENV CPATH $CPATH:/usr/lib/gcc/x86_64-alpine-linux-musl/6.2.1/include/
RUN ln -s /bin/cc /bin/clang
RUN ln -s /bin/cxx /bin/clang++
