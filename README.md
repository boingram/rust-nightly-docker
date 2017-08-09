# Rust Nightly Dockerfile

From time to time, one finds oneself needing to build a Rust executable for Linux while developing on a Mac. This repo contains a Dockerfile that installs Rust (and gcc!) on a CentOS container and runs a given `cargo` command at `/workspace`.

To build the image, execute the typical Docker build command:
```
docker build -t rust-nightly-docker .
```

To build your Rust project in the container, go to your project's directory and run:
```
docker run -v $(pwd):/workspace rust-nightly-docker
```

`build` is specified as the default command to execute, but you can override that by adding arguments after the image name in the docker run command. Since we're mounting our project directly into `/workspace`, the build artifacts will still be found in the `target` directory of your project.
