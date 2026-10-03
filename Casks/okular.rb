cask "okular" do
  arch arm: "arm64", intel: "x86_64"

  version "master-8118"
  sha256 arm:   "365e9c0548ecd2a251bac72eae96bb9d5d8a3dac5c968d7187ee481d0d39524f",
         intel: "703ce050c5ef06d2d4746a65604f825a6193438b0655b3c5fb6f21eb3ceacfb9"

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
