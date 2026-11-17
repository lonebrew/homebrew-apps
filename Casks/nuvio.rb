cask "nuvio" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "0.1.37-alpha"
  sha256 arm:   "9835d5a800672ffeb7be759f358d1a190bcaf56545ccdaed502016da243c87de",
         intel: "1ded3b9c87d167806889f290dd471f66c73049465cb36e900be6b90a529f3bb8"

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
