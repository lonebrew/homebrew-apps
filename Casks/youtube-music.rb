cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.10.0"
  sha256 arm:   "ee30ccf7be62be04e17d94d54f0eedcfc74ee4048cde15fd9c9540ece1cecaf2",
         intel: "36b3eeccf9f8545517aebd5490db7fb392c57006de27a770937e1c260755380d"

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
