# Network Protocol

Transport: WebSocket-style duplex messages with JSON payloads.

## Message catalogue

| Type | Direction | Purpose |
| --- | --- | --- |
| `hello` | client → server | Announce client and request room join |
| `room_created` | server → client | Room code and role |
| `ping` / `pong` | both | Clock offset sampling (~15 exchanges) |
| `ready` | client → server | Song preloaded and ready to start |
| `start_at` | server → client | Scheduled start time T (2–3 s ahead) |
| `play` / `pause` / `seek` | host → server → clients | Transport controls |
| `drift` | client → server | Periodic offset report (10–30 s) |
| `delay` | client → server | Per-device speaker/Bluetooth delay setting |
| `meter` | server → client | Sync accuracy readings |

## Sync handshake

1. Songs live on the server and belong to shared playlists.
2. Everyone joins a room using the room code.
3. Each phone starts its forward-only Ensync Clock, pings the server about 15 times, keeps the shortest round trip, and computes its offset from the room master clock.
4. Host presses play; server answers with `start_at` set 2–3 seconds ahead.
5. Every phone preloads the song and replies `ready`.
6. At time T, everyone starts.
7. Every 10–30 seconds each phone checks drift and corrects by a small speed change or a small jump, depending on error size.
8. A delay slider compensates for slow speakers or Bluetooth lag.

*TODO: freeze the exact JSON schema, error codes and sequence diagrams.*
