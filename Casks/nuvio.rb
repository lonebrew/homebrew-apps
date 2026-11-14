cask "nuvio" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "0.1.36-alpha"
  sha256 arm:   "8da41505125e1c164024aa57a89186318a2a8ca6af725983bd023c805fcf2a31",
         intel: "16f6a5a6fb7377778cd703cc7de955aa4ee7ba653448f4b4d1483b45a1af803f"

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
