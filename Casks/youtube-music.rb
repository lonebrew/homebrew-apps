cask "youtube-music" do
  arch arm: "-arm64", intel: ""

  version "3.5.3"
  sha256 arm:   "bae1133ac975cfd6cbaf280fed43754d7f020d0b5501d770c62b4afa053afb77",
         intel: "00f14f59770ada1428dead6827f3a7e9e2c3e6ea64803e830ef52b0dd5e191f6"

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
