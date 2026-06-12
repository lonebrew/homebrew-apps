cask "macytdl" do
  version "1.30"
  sha256 "17f7fdd48c0df10e144a3f98a1cf766c0142ea7061c7cce325234959bf27376a"

  url "https://github.com/section83/MacYTDL/releases/download/#{version}/MacYTDL-v#{version}.dmg"
  name "macytdl"
  desc "GUI front-end for the YT-DLP video downloader"
  homepage "https://github.com/section83/MacYTDL/"

  depends_on :macos

  app "MacYTDL.app"

  zap trash: "~/Library/Preferences/MacYTDL"
end
