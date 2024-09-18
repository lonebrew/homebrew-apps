cask "boring.notch" do
  version "sleeping-snail"
  sha256 "4ab58d9f9126f2cab52d3731da48e9305a384f5264a28f80dc6134de09b0e81d"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/#{version}/#{version.split("-").map(&:capitalize).join}.dmg"
  name "boring.notch"
  desc "Not so boring notch That Rocks"
  homepage "https://github.com/TheBoredTeam/boring.notch"

  depends_on macos: ">= :sonoma"

  app "boringNotch.app"

  zap trash: "~/Library/Preferences/electronlabsdev.boringNotch.plist"
end
