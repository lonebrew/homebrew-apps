cask "nuvio" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "0.1.35-alpha"
  sha256 arm:   "927b9a29da9dd3215fecbb4108e7a91731e3583c9f8a4056d5635ba04a5db778",
         intel: "6e652baca94bf7181a93d25fee977940cc350c92521819889f0b024341cd851e"

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
