cask "nuvio" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "0.1.38-alpha"
  sha256 arm:   "a456810871b957104164315cf30806b59fa61b220428f26afabea552f9d113d8",
         intel: "ee28136d68cdc27f796e16b1251d830eb847008f4a8622ea0fc833e794a29baa"

  url "https://github.com/NuvioMedia/NuvioDesktop/releases/download/#{version}/Nuvio-macOS-#{arch}-#{version}.dmg"
  name "Nuvio"
  desc "Watch your library, anywhere"
  homepage "https://nuvio.tv/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-[0-9A-Za-z]+(?:[.-][0-9A-Za-z]+)*)?)$/i)

    strategy :github_releases do |json, regex|
      json.filter_map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        match[1] if match
      end
    end
  end

  depends_on :macos

  app "Nuvio.app"
end
