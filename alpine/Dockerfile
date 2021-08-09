FROM alpine

RUN apk --no-cache -q add git-lfs zsh shadow python3 patch jq curl
RUN zsh -c "T4D_NATIVE=false; CSH=false; T4D_CLONE_ARGS=http; INSTALL_ROOT=false; \
    T4D_MANIFEST='https://raw.githubusercontent.com/T4D-Suites/T4D-Team-Default/main/manifest.xml'; \
    $(curl -fsSL https://raw.githubusercontent.com/T4D-Suites/Tools4Dev/main/Platforms/install.sh)"