cask "boring.notch" do
  version "glowing-panda"
  sha256 "d42a4fe767d833fa571439ec4d47dd9eaabaeff6eda5491909d636537f0f2469"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/#{version}/#{version.split("-").map(&:capitalize).join}.dmg"
  name "boring.notch"
  desc "Not so boring notch That Rocks"
  homepage "https://github.com/TheBoredTeam/boring.notch"

  depends_on macos: ">= :sonoma"

  app "boringNotch.app"

  zap trash: "~/Library/Preferences/electronlabsdev.boringNotch.plist"
end
