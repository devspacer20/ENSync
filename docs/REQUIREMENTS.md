# Requirements

## Functional

- Users can register, log in and create playlists.
- Owners can invite members as Owner, Editor or Listener; permissions are checked on every action.
- Songs can be added, removed, reordered, searched and sorted.
- A host can create a room and share a code; others can join with it.
- Host play / pause / seek is followed by every client.
- Solo mode works without a room.
- Members can stream or download a song or playlist.
- Host can be transferred temporarily, taken back, and succeeded automatically on drop.
- A sync accuracy meter is displayed.

## Non-functional

- Sync error below the echo threshold (target: a few tens of milliseconds).
- Playback survives a user changing the phone's system time mid-song.
- Short network drops recover.
- Only royalty-free or Creative Commons tracks are used.
- At least three (ideally five) phones for testing; Wi-Fi and hotspot both supported.

## Environment

- Server: Node.js with WebSockets (proposal) / C core scaffolding in this repository.
- Client: Web app using Web Audio API.
- Clock: `AudioContext.currentTime` and `performance.now()`; `SystemClock.elapsedRealtime()` on Android.
- Storage: SQLite or JSON file.
- Development laptop: dual-core CPU, 8 GB RAM, modern browser.

*TODO: convert these into tracked acceptance criteria.*
