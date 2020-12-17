# file_raw
**Links:** [marketplace](https://marketplace.yoyogames.com/assets/8865/raw-file-functions) (if you want) · [documentation](https://yal.cc/r/20/file_raw/) · [itch.io page](https://yellowafterlife.itch.io/gamemaker-raw-file)

This extension exposes low-level C file functions (stdio.h) to you under
```
file_raw_
```
prefix.

These allow for buffer-styled operations on files, as well as a few extras (e.g. flushing changes to a file without costly close-reopen, or reading X characters from a file as a string).

Also, in the name of performance and not spending too much time on a free extension, it does not do *too much* error checking, so you might be able to crash your game if you try hard enough.
