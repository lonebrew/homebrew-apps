cask "okular" do
  arch arm: "arm64", intel: "x86_64"

  version "master-8283"
  sha256 arm:   "f8bdc1c55f69970b02dbb69cfb6a1fa24c82d1381a18c2edd0df61c5dbfe18ca",
         intel: "e08c32d87f72dd54d34a41b277d3d9c64b169cb44d568ceee74fac56dc16cb9b"

  url "https://cdn.kde.org/ci-builds/graphics/okular/master/macos-#{arch}/okular-#{version}-macos-clang-#{arch}.dmg"
  name "KDE Connect"
  desc "Communication between all your devices. Phone, Text, Photos and more"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/graphics/okular/master/macos-#{arch}/"
    regex(/href="okular-([a-z]+-\d+)-macos-clang-#{arch}\.dmg/i)
  end

  depends_on macos: :ventura

  app "okular.app"

  zap trash: [
    "~/Library/Preferences/okularpartrc",
    "~/Library/Preferences/okularrc",
  ]
end
