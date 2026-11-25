# ENSync — Project Overview

> Listen together, in perfect sync.

Ensync is a group listening app: one person hosts a room, friends join with a code, and every phone plays the same song at the same moment. A forward-only session clock, scheduled start times and drift correction keep the group in sync without depending on the phone's system clock.

## Goals

- Shared playlists with Owner / Editor / Listener roles and a solo mode.
- Scheduled "start at T" playback with a sync accuracy meter in milliseconds.
- Hand-written data structures used by real features, not just as exercises.
- Measured results: clock source, network type, drift correction, streaming vs download.

## Scope

| In scope | Out of scope |
| --- | --- |
| Room creation and join by code | Dedicated multi-room speaker hardware |
| Play / pause / seek controlled by host | Commercial music catalog licensing |
| Streaming and downloading royalty-free tracks | Offline-first mobile apps |
| Clock offset, drift correction, per-device delay | Guaranteed sub-millisecond sync |

## Documentation map

- [Architecture](ARCHITECTURE.md) — modules and responsibilities
- [Requirements](REQUIREMENTS.md) — functional and non-functional requirements
- [DSA Design](DSA_DESIGN.md) — data structures and where they are used
- [Network Protocol](NETWORK_PROTOCOL.md) — messages and sync handshake
- [Coding Standards](CODING_STANDARDS.md) — conventions for contributors
- [Contributing](CONTRIBUTING.md) — workflow and pull requests
- [Meetings](MEETINGS.md) — meeting log
- [Roadmap](ROADMAP.md) — 14-week schedule

*Status: repository scaffold — implementation pending.*
