cask "youtube-music" do
  arch arm: "-arm64"

  version "3.12.1"
  sha256 arm:   "81392bd1e1dfe56befa7373c4b0a31fe8972cc6bb36edc55aa923dde183bce78",
         intel: "573021f8fd8c9fad4c38b65d17de007f6a973ada66aa931a03d8bc028b009ee9"

  url "https://github.com/pear-devs/pear-desktop/releases/download/v#{version}/YouTube-Music-#{version}#{arch}.dmg"
  name "YouTube Music"
  desc "Desktop App bundled with custom plugins (and built-in ad blocker / downloader)"
  homepage "https://github.com/pear-devs/pear-desktop/"

  auto_updates true
  depends_on macos: :ventura

  app "YouTube Music.app"

  zap trash: [
    "~/Library/Preferences/com.github.th-ch.youtube-music.plist",
    "~/Library/Saved Application State/com.github.th-ch.youtube-music.savedState",
  ]
end
