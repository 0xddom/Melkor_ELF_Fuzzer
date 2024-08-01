FROM ubuntu:noble

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y \
  rustup \
  clang \
  build-essential \
  pkg-config \
  libssl-dev \
  git
RUN rm -rf /var/lib/apt/lists/*

COPY . /Melkor_ELF_Fuzzer

WORKDIR /Melkor_ELF_Fuzzer
RUN make



