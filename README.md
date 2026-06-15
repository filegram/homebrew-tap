# Filegram Homebrew Tap

Homebrew Cask for [Filegram](https://github.com/filegram/filegram-desktop) —
a disk space analyzer with an interactive treemap.

## Install

```bash
brew install --cask filegram/tap/filegram
```

Or tap first, then install:

```bash
brew tap filegram/tap
brew install --cask filegram
```

The cask installs a universal (arm64 + x86_64) `Filegram.app` from the official
[GitHub release](https://github.com/filegram/filegram-desktop/releases) DMG.

## Updating

On a new release, bump `version` and `sha256` in `Casks/filegram.rb`. The
sha256 is the `filegram-macos-universal.dmg` digest from
`gh release view <tag> --repo filegram/filegram-desktop --json assets`.
