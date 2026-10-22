cask "okular" do
  arch arm: "arm64", intel: "x86_64"

  version "master-8170"
  sha256 arm:   "2323d072fd1d2f6580a42e32f768e4c1c8fd3809c031494ed1444b22075434ff",
         intel: "597cac8309432e56bdde612bbd78fcb08d4407202a811d77a96dbc61270ed3bf"

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
