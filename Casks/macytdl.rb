cask "macytdl" do
  version "1.29.3"
  sha256 "c77d680d0b185fd24e8eb2590d4e5f82996e01402dacadac47d5d98b8d7eece3"

  url "https://github.com/section83/MacYTDL/releases/download/#{version}/MacYTDL-v#{version}.dmg"
  name "macytdl"
  desc "GUI front-end for the YT-DLP video downloader"
  homepage "https://github.com/section83/MacYTDL/"

  app "MacYTDL.app"

  zap trash: "~/Library/Preferences/MacYTDL"
end
