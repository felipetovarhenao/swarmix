
# **swarmix**: Swiss army knife for cmix

<img src="logo.png" height="150px"/>

### Description

**swarmix** is a third-party library for the RTcmix scripting language. The library includes a wide variety of functions for data processing, unit conversion, mathematical functions, and more.

### Documentation
At the moment, the documentation for **swarmix** is limited and conveyed through docstrings found at the top of each function declaration.

### Installation

In the root folder of the RTCmix tree (typically `${HOME}/RTcmix`), create a new folder named `minclude`, and move `swarmix.sco` and the `swarmix` folder into that folder.

### Usage

To use `swarmix`, include the following line at the top of your script:
```c
include swarmix.sco
```

If you're using John Gibson's [RTcmixShell](https://cecm.indiana.edu/rtcmix/rtcmix-app.html) application, you need to include the full path:

```c
include "${HOME}/RTcmix/minclude/swarmix.sco"
```

### License

ISC License
Copyright (c) 2023, Felipe Tovar-Henao

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.