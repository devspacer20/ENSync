# Roadmap

14 weeks, seven two-week blocks. Sync work is central so there is time to fix issues before final testing.

| Block | Weeks | Focus |
| --- | --- | --- |
| 1 | 1–2 | Proposal, research, learning |
| 2 | 3–4 | Server, song upload, playlists (linked list), single-device playback |
| 3 | 5–6 | Rooms, host and guests (hash map) |
| 4 | 7–8 | Ensync Clock, time check and "start at T" (min-heap) |
| 5 | 9–10 | Drift correction and delay slider (latency stability) |
| 6 | 11–12 | Host transfer and roles; search, sorting, downloads, LRU cache |
| 7 | 13–14 | Sync meter, testing and report |

## Milestones

- [ ] M1 — playlists and single-device playback
- [ ] M2 — rooms and "start at T" on two phones
- [ ] M3 — drift correction and delay slider
- [ ] M4 — roles, search, sorting, downloads, LRU cache
- [ ] M5 — sync meter, measurements, report and demo

## Measurement plan

Sync error (ms) with 2/3/5 devices; Ensync Clock vs system clock; Wi-Fi vs hotspot; with/without drift correction; streamed vs downloaded; hand-written vs built-in structures.
