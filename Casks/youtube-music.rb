cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.6.2"
  sha256 arm:   "88e127bc2b41dddca3682abde3b04562842d6a0708c55281a7161efcf111937b",
         intel: "da3cfeece435f617a35fee009c1fb91b85cc77d27481a56946a47cbccfca4631"

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
