cask "nuvio" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "0.1.39-alpha"
  sha256 arm:   "a0d5e03d99b986eaa6fe2c8b195654d52ace592f0ff10e56eeedde11e986a377",
         intel: "0bd769b414af863da789c9a778ae2517eef18d554c680d136f39ea6495caa6ed"

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
