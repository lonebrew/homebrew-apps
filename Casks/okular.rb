cask "okular" do
  arch arm: "arm64", intel: "x86_64"

  version "master-6952"
  sha256 arm:   "f0470c8e8736be0e96bd9f06b26ea71d93264be8640e1416a314ef32599f7b47",
         intel: "51a7de11d87a74763c9b562633e8389fba246e150c9b73baf9a05aa3364618c5"

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
