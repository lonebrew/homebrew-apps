cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.11.0"
  sha256 arm:   "a2d68bd80117ce376a08229f5cfb0a4570d98aba4e56af8040c725b22e856e0d",
         intel: "27f74b53c7c4dd8c77ce44d7c7d0f955cb083e5251701e6ca2b3781e85c4e373"

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
