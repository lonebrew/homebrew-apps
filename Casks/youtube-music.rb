cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.8.1"
  sha256 arm:   "8a2b7027be2a1e76e30eefdf454b845bc05fe6182e1c798ef88d54ef9110628c",
         intel: "c3301638ca1e06f389b9ca502224c63b96830bf2464530ce41b6d86c93a7c253"

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
