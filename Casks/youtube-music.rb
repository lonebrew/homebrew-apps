cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.7.5"
  sha256 arm:   "be3f60405114ec6b1d67c611a64f7d805707362c10f8dbb25e19cb253549083b",
         intel: "aa58df377ba7f536966d7797714a1ec19210295d03311809fc2066ef1dc29f9c"

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
