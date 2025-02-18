cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.7.4"
  sha256 arm:   "926e793d2d7df57a3c2d66d593b60fb820a42f5954b0648fc7ff35223dfaf0e5",
         intel: "db09b30957d08ec823c7e24081df583cd540558068efb184d1e688527b7dc207"

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
