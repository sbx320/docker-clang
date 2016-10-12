FROM base/archlinux
# Clang
RUN rm -R /etc/pacman.d/gnupg
RUN rm -R /root/.gnupg
RUN dirmngr </dev/null

RUN pacman-key --init
RUN pacman-key --populate archlinux
RUN pacman-key --refresh-keys && pacman -Syu --noconfirm
RUN pacman -S --noconfirm clang
ENV CC clang
ENV CXX clang++
ENV CPATH $CPATH:/usr/lib/gcc/x86_64-alpine-linux-musl/6.2.1/include/
RUN ln -s /bin/cc /bin/clang
RUN ln -s /bin/cxx /bin/clang++
