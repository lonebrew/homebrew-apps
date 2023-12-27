cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.1.1"
  sha256 arm:   "feddfcaf7b1cb2e7c5e59506230d97044068a8c5151024e689fe58252d6c5648",
         intel: "115bea67b4cc3aa2ddc30b129636af19d96d63b7d1029d8918f51aa303c913a8"

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
