# Data Structure Design

The in-memory logic is implemented by hand; built-in collections are not used for core operations.

| Feature | Structure | Module |
| --- | --- | --- |
| Playlist add / remove / next / previous | Doubly linked list | `linked_list.h`, `playlist.h` |
| Repeat-all | Circular linked list | `linked_list.h` |
| Up next and play history | Queue and stack | `queue.h` |
| Room code, song ID, permission lookup | Hash map | `hash_table.h` |
| Search suggestions while typing | Trie | *planned* |
| Sorting by name, artist, duration | Merge sort / quick sort | *planned* |
| "Do this at time T" scheduler | Min-heap | `min_heap.h` |
| Downloaded song cleanup | LRU cache (map + list) | *planned* |
| Download order | Queue + priority min-heap | `queue.h`, `min_heap.h` |
| Ping samples and drift readings | Sliding window | `circular_buffer.h` |
| Host succession and history | Queue and stack | `queue.h` |

## Conventions

- Structures own their memory and expose `init`, `destroy`, and explicit mutation functions.
- Operations report status through the shared error codes in `error.h`.
- Every structure gets a dedicated unit test under `tests/`.

*TODO: document invariants, complexity and ownership rules per structure.*
