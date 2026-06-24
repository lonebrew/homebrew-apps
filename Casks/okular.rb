cask "okular" do
  arch arm: "arm64", intel: "x86_64"

  version "master-7482"
  sha256 arm:   "3cd04872383e405d5f9199b46586caeb85bd7f4ef3ec22a8c21933d08ac1bd7e",
         intel: "0e4f3efafbb74a114e733a1f1474a1f81c1958f4dfeb87d5ab1d39bb0cced51a"

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
