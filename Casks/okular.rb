cask "okular" do
  arch arm: "arm64", intel: "x86_64"

  version "master-7419"
  sha256 arm:   "bba8ffbfa4a524a7fb0c95f08551eb389c2d8d45438b632cc7adcd32158c1bdd",
         intel: "5c0e996b7b1bd08d93d58ce396b6886ad10248cbab584964f83657fd8fe5ef8d"

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
