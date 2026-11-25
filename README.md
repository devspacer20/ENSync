# ENSync

> Listen together, in perfect sync.

ENSync is a group music-listening project: one device hosts a room, friends join with a code, and all phones play the same song at the same moment. A forward-only session clock, scheduled "start at T", drift correction and a per-device delay setting keep the group together without trusting the phone's system clock.

**Status: repository scaffold.** Folders, files and documentation are in place; implementation is pending.

## Repository layout

```
ENSync/
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md
│   │   └── feature_request.md
│   ├── PULL_REQUEST_TEMPLATE.md
│   └── workflows/
│       └── ci.yml
├── docs/
│   ├── PROJECT_OVERVIEW.md
│   ├── ARCHITECTURE.md
│   ├── REQUIREMENTS.md
│   ├── DSA_DESIGN.md
│   ├── NETWORK_PROTOCOL.md
│   ├── CODING_STANDARDS.md
│   ├── CONTRIBUTING.md
│   ├── MEETINGS.md
│   └── ROADMAP.md
├── include/
│   ├── common/     types.h, constants.h, error.h
│   ├── controller/ controller.h, playlist.h, command.h
│   ├── client/     client.h, client_manager.h
│   ├── network/    server.h, client_socket.h, protocol.h
│   ├── audio/      audio_engine.h, audio_buffer.h
│   ├── sync/       clock.h, synchronizer.h
│   └── dsa/        queue.h, circular_buffer.h, min_heap.h, linked_list.h, hash_table.h
├── src/
│   ├── main.c
│   └── (controller/, client/, network/, audio/, sync/, dsa/)
├── tests/
├── config/
│   └── ensync.conf.example
├── scripts/
│   ├── build.sh
│   └── test.sh
├── docker/
│   └── Dockerfile
├── .gitignore
├── .dockerignore
├── CMakeLists.txt
├── compose.yaml
├── Makefile
├── LICENSE
└── README.md
```

## Quick start (once implementation lands)

```sh
./scripts/build.sh
./scripts/test.sh
# or
cmake -S . -B build && cmake --build build && ctest --test-dir build
```

Copy `config/ensync.conf.example` to `config/ensync.conf` and adjust as needed.

## Documentation

Start with [PROJECT_OVERVIEW.md](docs/PROJECT_OVERVIEW.md), then see [ROADMAP.md](docs/ROADMAP.md) for the 14-week plan and [CONTRIBUTING.md](docs/CONTRIBUTING.md) for the workflow.
 