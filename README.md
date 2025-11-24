# `config.guess` for Windows

❓ GNU config.guess script ported to Windows Batch

## Installation

⚠️ **This project is only designed to be used on Windows systems.** For other platforms, use the pre-POSIX shell script [`config.guess`](https://cgit.git.savannah.gnu.org/cgit/config.git/tree/config.guess) that works on all other platforms.

```pwsh
Invoke-WebRequest \
    -Uri "https://github.com/jcbhmr/config.guess-windows/raw/main/config.guess.bat" \
    -OutFile "./config.guess.bat"
```

## Development

The canonical GNU target configuration syntax is:

```c
configuration = cpu "-" vendor ("-" kernel)? ("-" os)? ("-" obj)?

cpu = ... // Any known CPU name. Ex: "x86_64", "arm", "aarch64", "i386"
vendor = ... // Any known vendor name. Ex: "pc", "apple", "ibm"
kernel = ... // Any known kernel name. Ex: "linux", "windows", "darwin"
os = ... // Any known OS name. Ex: "gnu", "mingw32", "cygwin"
obj = ... // Any known object format name. Ex: "elf", "macho", "pe"
```
