cask "macytdl" do
  version "1.31.2"
  sha256 "a54bd420e70398fe14cb2d30714b9d33c439a37ac9a4e4d91e91593914943b8e"

  url "https://github.com/section83/MacYTDL/releases/download/#{version}/MacYTDL-v#{version}.dmg"
  name "macytdl"
  desc "GUI front-end for the YT-DLP video downloader"
  homepage "https://github.com/section83/MacYTDL/"

  depends_on :macos

  app "MacYTDL.app"

  zap trash: "~/Library/Preferences/MacYTDL"
end
