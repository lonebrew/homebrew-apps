cask "macytdl" do
  version "1.32"
  sha256 "359e5ec34eabd4689d1016d0ead238a8b8358cccf4d71a80ccab12ac84b8d9c8"

  url "https://github.com/section83/MacYTDL/releases/download/#{version}/MacYTDL-v#{version}.dmg"
  name "macytdl"
  desc "GUI front-end for the YT-DLP video downloader"
  homepage "https://github.com/section83/MacYTDL/"

  depends_on :macos

  app "MacYTDL.app"

  zap trash: "~/Library/Preferences/MacYTDL"
end
