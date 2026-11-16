cask "tetherkitnext" do
  version "1.2.0"
  sha256 "4fdac814ed1aea8906c2ee9917de27a926fa761f51d9694ab7ebbc380b2e5c2c"

  url "https://github.com/AA-EION/TetherKitNext/releases/download/v#{version}/TetherKitNext-#{version}.dmg"
  name "tetherkitnext"
  desc "Kext-free Android USB tethering on macOS"
  homepage "https://github.com/AA-EION/TetherKitNext/"

  depends_on macos: :sonoma

  app "TetherKitNext.app"

  zap trash: [
    "~/Library/Caches/com.tetherkitnext.app",
    "~/Library/HTTPStorages/com.tetherkitnext.app",
    "~/Library/Preferences/com.tetherkitnext.app.plist",
  ]
end
