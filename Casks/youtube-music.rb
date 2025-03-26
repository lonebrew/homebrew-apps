cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.8.0"
  sha256 arm:   "d6be2a4584b52f827b6a97647c9bf9ad310b448ddc7757afbe820e4a2cea8073",
         intel: "214ea4a04872ec2c550461768b9ac5f4bde118abe8180ecc5f0f64bc89a41279"

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
