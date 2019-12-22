
# ==========================================================================
# Copyright 2019 Jomoespe. All rights reserved.
#
# Use of this source code is governed by a The Unlicense license that can be
# found in the LICENSE file.
# ==========================================================================


# ----------------------------------------------------------------------
# First stage: build the binary program.
#   rust:<version>-alpine must be used because use "musl libc"
#   (http://www.musl-libc.org/) instead of libc.
#   See https://hub.docker.com/_/rust?tab=description variants section 
#   for more detail.
# ----------------------------------------------------------------------
FROM rust:1.40.0-alpine AS builder
WORKDIR /src
COPY . .
RUN cargo build --release

# ----------------------------------------------------------------------
# Second stage: build the container for binary built in previous stage.
# ----------------------------------------------------------------------
FROM scratch
COPY --from=builder /src/target/release/rust-docker /
ENTRYPOINT ["/rust-docker"]
