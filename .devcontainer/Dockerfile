FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

USER root

RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository -y ppa:hvr/ghc && \
    apt update && \
    apt install -y ghc-8.10.4 cabal-install-3.4


ENV PATH="/opt/ghc/bin:$PATH"

RUN cabal update && \
    cabal install --user --lib QuickCheck
