# Lonebrew Tap

This repository contains Formulae and Casks to be used with Homebrew: https://brew.sh

Tap this repository 
```sh
brew tap lonebrew/apps
```

Use `--no-quarantine` with `brew install` on `arm64` machines, which otherwise ends up in _Signature verification failed_ error.


## List of apps

### Casks

1. [Youtube Music](https://github.com/th-ch/youtube-music)
```sh
brew install lonebrew/apps/youtube-music

xattr -d com.apple.quarantine /Applications/YouTube\ Music.app
```

2. [KDE Connect](https://kdeconnect.kde.org/)
```sh
brew install lonebrew/apps/kde-connect
```

3. [Okular](https://okular.kde.org/)
```sh
brew install lonebrew/apps/okular

xattr -d com.apple.quarantine /Applications/okular.app
```

4. [MacYTDL](https://github.com/section83/MacYTDL)
```sh
brew install lonebrew/apps/macytdl
```

### Formula

1. [ripasso](https://github.com/cortex/ripasso)
```sh
brew install lonebrew/apps/ripasso-cursive 
```
