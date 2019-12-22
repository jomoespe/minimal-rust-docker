# Rust - Docker

This project is an example of building a minimal docker imagen from a Rust program

We are using *multi stage docker*

## How to build the container

```bash
docker build --rm -t docker-run .
```

or using the `make` command:

```bash
make docker
```

You car run with `docker run --rm  rust-docker` or `make docker-run`.

## Explore further

- [MUSL support for fully static binaries](https://doc.rust-lang.org/edition-guide/rust-2018/platform-and-target-support/musl-support-for-fully-static-binaries.html#musl-support-for-fully-static-binaries)
- [Taking Rust everywhere with rustup](https://blog.rust-lang.org/2016/05/13/rustup.html)
- [Static Build of Rust Executables](http://zderadicka.eu/static-build-of-rust-executables/)

## License

This Project is distributed under the The Unlicense license that can be found in the [LICENSE](LICENSE) file. See LICENSE and NOTICE for more information.
