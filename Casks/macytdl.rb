cask "macytdl" do
    version "1.29.1"
    sha256 "dc835267342beef8c4ce013392c3aed4c50be8819d97a766746a1386c3189b1e"
  
    url "https://github.com/section83/MacYTDL/releases/download/#{version}/MacYTDL-v#{version}.dmg"
    name "macytdl"
    desc "GUI front-end for the YT-DLP video downloader"
    homepage "https://github.com/section83/MacYTDL/"
  
    app "MacYTDL.app"
  
    zap trash: "~/Library/Preferences/MacYTDL"
  end
  