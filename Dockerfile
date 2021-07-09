FROM debian

RUN apt-get -qq update && \
    apt-get install -qqy --no-install-recommends \
    ca-certificates \
    git-lfs zsh util-linux python python3-selinux patch jq curl
RUN zsh -c "T4D_NATIVE=false; CSH=false; T4D_CLONE_ARGS=https test; INSTALL_ROOT=false; \
    T4D_MANIFEST='https://raw.githubusercontent.com/T4D-Suites/T4D-Team-Default/docker/manifest.xml'; \
    $(curl -fsSL https://raw.githubusercontent.com/T4D-Suites/Tools4Dev/main/Platforms/install.sh)"