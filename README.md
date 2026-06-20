# homebrew-claudemon

Homebrew tap for [Claudemon](https://github.com/tahtaciburak/claudemon) — a menu bar app showing your Claude Code usage limits.

## Install

```bash
brew install tahtaciburak/claudemon/claudemon
```

This builds Claudemon from source (no signing or Apple Developer account needed). The `claudemon` command launches the menu bar app.

Start it now, and automatically at login:

```bash
brew services start claudemon
```

Or run it manually:

```bash
claudemon &
```

## Update / uninstall

```bash
brew upgrade claudemon
brew services stop claudemon && brew uninstall claudemon
```
