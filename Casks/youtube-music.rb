cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.9.0"
  sha256 arm:   "76ab9ae2c30f37628ec1580f0b530cd56875a1a40335192257d388c18c6c613f",
         intel: "7ba47ff3941f6d0caaf9dea9a6fa48cc4944f387b5ec44a75f0cb07455843c75"

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
