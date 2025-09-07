cask "kde-connect" do
  arch arm: "arm64", intel: "x86_64"

  version "master-5307"
  sha256 arm:   "b32f872814b56aa2a3a17f4bfe8b4b724d0669fc6373f04bdc4cdbb316dcadc0",
         intel: "9c5ae21639a9946b276482c58413b02f929417ed1a258efcb84323b71f496c53"

  url "https://cdn.kde.org/ci-builds/network/kdeconnect-kde/master/macos-#{arch}/kdeconnect-kde-#{version}-macos-clang-#{arch}.dmg"
  name "KDE Connect"
  desc "Communication between all your devices. Phone, Text, Photos and more"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/network/kdeconnect-kde/master/macos-#{arch}/"
    regex(/href="kdeconnect-kde-([a-z]+-\d+)-macos-clang-#{arch}\.dmg/i)
  end

  app "KDE Connect.app"

  zap trash: [
    "~/Library/Application Support/kdeconnect.app",
    "~/Library/Caches/kdeconnect.app",
    "~/Library/Caches/kdeconnect.sms",
    "~/Library/Preferences/kdeconnect",
  ]
end
