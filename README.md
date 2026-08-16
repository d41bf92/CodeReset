# CodeReset

A command-line utility for resetting [Visual Studio Code](https://code.visualstudio.com) data.

## Requirements

- macOS on Apple silicon

- [Visual Studio Code](https://code.visualstudio.com) installed in `~/Applications/` with [Portable mode](https://code.visualstudio.com/docs/setup/portable) enabled

## Installation

Download the latest build from the [Releases](https://github.com/d41bf92/CodeReset/releases) page.

```
unzip artifact.zip
xattr -d com.apple.quarantine code-reset
sudo mkdir -p /usr/local/bin
sudo mv code-reset /usr/local/bin/
```

## Usage

Display all supported options:

```
code-reset -h
```

Perform a full reset:

```
code-reset
```

Perform a reset while preserving `settings.json` and deploy a configuration profile:

```
code-reset -SP
```
