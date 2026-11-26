cask "okular" do
  arch arm: "arm64", intel: "x86_64"

  version "master-8335"
  sha256 arm:   "b422a89c0cd97346b94a23a56aece6ef6fc33582f335f0d5eef3358263256694",
         intel: "e388016ea50a029c7dec2d7ee7c3e27c87abbb488d920f512ed5f901b0c988c0"

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
