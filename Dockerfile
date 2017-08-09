FROM centos:latest

RUN yum install -y gcc
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain nightly
RUN mkdir -p /workspace
WORKDIR /workspace
ENTRYPOINT ["/root/.cargo/bin/cargo"]
CMD ["build"]
