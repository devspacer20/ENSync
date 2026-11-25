FROM ubuntu:24.04 AS build

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential cmake && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY CMakeLists.txt Makefile ./
COPY include/ include/
COPY src/ src/
COPY tests/ tests/

RUN cmake -S . -B build -DCMAKE_BUILD_TYPE=Release && \
    cmake --build build --parallel

FROM ubuntu:24.04 AS runtime

COPY --from=build /app/build/ensync /app/build/ensync
COPY --from=build /app/config /app/config

EXPOSE 8080
ENTRYPOINT ["/app/build/ensync"]
