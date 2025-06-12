cask "macytdl" do
  version "1.29.2"
  sha256 "d23104ff5df79ee47d8ff53160804c0fc2efe61cb340c7ffb6f29643757dc409"

  url "https://github.com/section83/MacYTDL/releases/download/#{version}/MacYTDL-v#{version}.dmg"
  name "macytdl"
  desc "GUI front-end for the YT-DLP video downloader"
  homepage "https://github.com/section83/MacYTDL/"

  app "MacYTDL.app"

  zap trash: "~/Library/Preferences/MacYTDL"
end
