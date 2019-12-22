docker-image = rust-docker

all:
	@ cargo build --release

build:
	@ cargo build
run:
	@ cargo run

clean:
	@ cargo clean

docker:
	@ docker build --rm -t $(docker-image) .

docker-run:
	@ docker run --rm $(docker-image)