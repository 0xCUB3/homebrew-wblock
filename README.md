# homebrew-wblock

wBlock is now available in [homebrew/cask](https://github.com/Homebrew/homebrew-cask/blob/main/Casks/w/wblock.rb). This tap is retired.

## Install

```sh
brew install --cask wblock
```

## Move an existing installation

Quit wBlock, then run the following commands. Do not use `--zap`, which deletes app data.

```sh
brew update
brew reinstall --cask homebrew/cask/wblock
brew untap 0xcub3/wblock
```

The migration map redirects the old cask name to `homebrew/cask`. Future cask updates are handled upstream by [Homebrew autobump](https://docs.brew.sh/Autobump).

The app and its signed, notarized DMGs remain in [0xCUB3/wBlock](https://github.com/0xCUB3/wBlock).
