FROM base/archlinux
# Clang
RUN pacman -S archlinux-keyring && Then pacman -Syu
RUN pacman -Sy clang
ENV CC clang
ENV CXX clang++
RUN ln -s /usr/bin/cc /usr/bin/clang
RUN ln -s /usr/bin/cxx /usr/bin/clang++
