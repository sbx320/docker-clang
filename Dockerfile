FROM greyltc/archlinux
# Clang
RUN rm -rf /etc/pacman.d/gnupg
RUN rm -rf /root/.gnupg

RUN pacman-key --init
RUN pacman-key --populate archlinux
RUN pacman-key --refresh-keys && pacman -Syu --noconfirm
RUN pacman -S --noconfirm clang
ENV CC clang
ENV CXX clang++
ENV CPATH $CPATH:/usr/lib/gcc/x86_64-alpine-linux-musl/6.2.1/include/
RUN ln -s /bin/cc /bin/clang
RUN ln -s /bin/cxx /bin/clang++
