cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.7.1"
  sha256 arm:   "24e89176feddc3eca5fd267cb32dcaae22bb15515e9e8d185eb8eaecf38a8863",
         intel: "157acf717a7c2332aa88169f4a792959dd91c2de7d4ca59a188aacdaca58cfaf"

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
