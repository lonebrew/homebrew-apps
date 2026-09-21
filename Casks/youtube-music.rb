cask "youtube-music" do
  arch arm: "-arm64"

  version "3.12.0"
  sha256 arm:   "1266b1efdf3cd22276b989445ea14f0afd6bc751c26fc0983f24dd527be2f724",
         intel: "76e4a859cfbb777ca4383f83455a4ee01a8345356b86f0a91395b9e7dda6a863"

  url "https://github.com/pear-devs/pear-desktop/releases/download/v#{version}/YouTube-Music-#{version}#{arch}.dmg"
  name "YouTube Music"
  desc "Desktop App bundled with custom plugins (and built-in ad blocker / downloader)"
  homepage "https://github.com/pear-devs/pear-desktop/"

  auto_updates true
  depends_on macos: :monterey

  app "YouTube Music.app"

  zap trash: [
    "~/Library/Preferences/com.github.th-ch.youtube-music.plist",
    "~/Library/Saved Application State/com.github.th-ch.youtube-music.savedState",
  ]
end
