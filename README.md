# `config.guess` for Windows

❓ GNU config.guess ported to Windows Batch

<table align=center><td>

```pwsh
./config.guess
```

</table>

## Installation

⚠️ **This script is only designed to be used on Windows systems.** Use [`config.guess`](https://cgit.git.savannah.gnu.org/cgit/config.git/tree/config.guess) for all other platforms.

```pwsh
Invoke-WebRequest \
  -Uri "https://github.com/jcbhmr/config.guess-windows/raw/main/config.guess.bat" \
  -OutFile "./config.guess.bat"
```

## Usage

After downloading `config.guess.bat`, you can use it just like you would the GNU `confug.guess` script:

```pwsh
./config.guess
```

The script will output a GNU-style target configuration tuple like `x86_64-pc-windows-msvc` specific to your current system.

📚 Check out Wikipedia's [Comparison of Microsoft Windows versions](https://en.wikipedia.org/wiki/Comparison_of_Microsoft_Windows_versions) to learn more about which Windows versions support which hardware.

The most popular Windows targets are `(x86_64|arm64)-pc-windows-msvc`.

## Development

The canonical GNU target configuration syntax printed by GNU `config.guess` and `config.sub` is:

```c
configuration = cpu "-" vendor ("-" kernel)? ("-" os)? ("-" obj)?

cpu = ... // Any known CPU name. Ex: "x86_64", "arm", "aarch64", "i386"
vendor = ... // Any known vendor name. Ex: "pc", "apple", "ibm"
kernel = ... // Any known kernel name. Ex: "linux", "windows", "darwin"
os = ... // Any known OS name. Ex: "gnu", "mingw32", "cygwin"
obj = ... // Any known object format name. Ex: "elf", "macho", "pe"
```

The equivalent of `var=$(command a b c)` in Bash is `for /f "delims=" %%i in ('command a b c') do set var=%%i` in Batch.
