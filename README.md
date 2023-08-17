# .bash

An opinionated, (mostly) POSIX-compliant Bash library of shell variables,
aliases, and functions.

## Introduction

.bash is intended to make exporting environment variables and sourcing Bash
shell scripts cleaner and safer. It includes a script (`./src/rc.sh`) that can
be sourced from a startup script (e.g., `~/.bashrc`) to read 2 specially named
`.env` files listing variables to be exported:

- `.secrets.env`: Contains variables for keys, credentials, etc.
- `.settings.env`: Contains variables for shell and platform settings.

This script can also source 3rd-party and in-house scripts from the Git-ignored
directory `lib`.

As this project matures, its set of standard (i.e., pre-packaged, Git-tracked)
scripts are expected to grow as part of this projects overall grow to make
light work for software engineers and data scientists in their daily work.

## Getting Started

.bash supports 2 UNIX-flavored operating systems:

- [Linux][Linux]
- [macOS][macOS]

It can indirectly support the [Windows][Windows] operating system if used with Microsoft's
native [Windows Subsystem for Linux (WSL)][WSL] or a 3rd-party emulator like Git BASH
(part of [Git for Windows][Git for Windows]).

To use or test .bash, the following software must first be installed on your
system:

- [Git][Git] 2.39.2 or higher
- [GNU Bash][GNU Bash] 3.2.57 or higher

In addition, for the purpose of continuous integration/development (CI/CD), the
the optional installation of the following toolchain is encouraged:

- [GitFlow][GitFlow] 0.4.1 or higher
- [pre-commit][pre-commit] 3.3.3 or higher

### Installation

.bash is installable as a Git clone. For individuals, we recommend cloning in
your home directory.

```bash
cd ~
git clone https://github.com/dagitali/.bash.git
```

Alternatively, teams may prefer to clone .bash to a shared, visible directory,
such as `env`.

```bash
cd <path_to_env_parent_dir>
git clone https://github.com/dagitali/.bash.git bash
```

### Usage

TBD

## Builds and Testing

TBD

## Documentation

Documentation for .env is this README itself, plus the documents listed in the
subsections that follow.

### Community Health

- [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md)
- [`CONTRIBUTING.md`](CONTRIBUTING.md)

### Other

- [`REFERENCES.md`](REFERENCES.md)

## Known Issues

Currently, there are no known issues.

## References

API documentation, tutorials, and other online references and made portions of
this assignment possible. See [REFERENCES.md](REFERENCES.md) for a list of some.

[Git]: https://git-scm.com
[Git for Windows]: https://gitforwindows.org
[GitFlow]: https://github.com/nvie/gitflow
[GNU Bash]: https://www.gnu.org/software/bash
[Linux]: https://www.linuxfoundation.org
[macOS]: https://www.apple.com/macos
[pre-commit]: https://github.com/pre-commit/pre-commit
[Windows]: https://www.microsoft.com/en-us/windows
[WSL]: https://docs.microsoft.com/en-us/windows/wsl/about
