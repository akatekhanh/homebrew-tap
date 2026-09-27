# akatekhanh/homebrew-tap

Homebrew casks for [noddle.dev](https://noddle.dev) apps.

```sh
brew tap akatekhanh/tap
brew trust akatekhanh/tap      # Homebrew 7+ requires this for third-party taps
brew install --cask cruft
```

| Cask | What it is |
|---|---|
| [`cruft`](Casks/cruft.rb) | [Cruft](https://github.com/akatekhanh/cruft) — a calm storage cleaner for macOS |

The casks here are updated automatically from each app's GitHub Releases by
[`update-cask.yml`](.github/workflows/update-cask.yml).
