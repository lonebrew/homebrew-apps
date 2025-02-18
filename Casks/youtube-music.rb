cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.7.3"
  sha256 arm:   "b719b3bfb4a4185d1123787b0ff963dfeb02c96f6206dd60ce5e784ab98a7b9b",
         intel: "f05ed761b61756c0d69ea849e8301252d81c54ff700e41fddc76aef756ac68de"

  url "https://github.com/th-ch/youtube-music/releases/download/v#{version}/YouTube-Music-#{version}#{arch}.dmg",
      verified: "github.com/th-ch/youtube-music/"
  name "YouTube Music"
  desc "Desktop App bundled with custom plugins (and built-in ad blocker / downloader)"
  homepage "https://th-ch.github.io/youtube-music/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "YouTube Music.app"

  zap trash: [
    "~/Library/Preferences/com.github.th-ch.youtube-music.plist",
    "~/Library/Saved Application State/com.github.th-ch.youtube-music.savedState",
  ]
end
