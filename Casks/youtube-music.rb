cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.7.2"
  sha256 arm:   "75ebd43cedd278cf50d752b4da086ccff9b4e732f19b2458da2fc75b4fe5db6d",
         intel: "4ea510eea38e38683267abf4ebcd41fc063ff7e933474f0b1edc3fe995d3fa92"

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
