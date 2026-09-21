cask "okular" do
  arch arm: "arm64", intel: "x86_64"

  version "master-7965"
  sha256 arm:   "75cefa848a636eaea6c3e6b53d29265d2f6d3f2ffbfc1ef662ffcc6df25baf04",
         intel: "5bb405d3c19b3bdc669abe279c03bc0c7f982f6aacca0fbb72d4adc25874840e"

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
