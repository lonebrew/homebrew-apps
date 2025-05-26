cask "boring.notch" do
  version "wolf.painting"
  sha256 "1a58ec27e5de30faf107fdf8b77575b1c39ace69e77b1330fc4ed6562bf2badc"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/#{version}/#{version.split(".").map(&:capitalize).join}.dmg"
  name "boring.notch"
  desc "Not so boring notch That Rocks"
  homepage "https://github.com/TheBoredTeam/boring.notch"

  livecheck do
    url :url
    regex(/(\w+[.-]\w+)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "boringNotch.app"

  zap trash: "~/Library/Preferences/electronlabsdev.boringNotch.plist"
end
