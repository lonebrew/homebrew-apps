cask "kde-connect" do
  arch arm: "arm64", intel: "x86_64"

  version "master-5140"
  sha256 arm:   "47307fd9cb1803a1315726ce81c82f0429b374655b8d6aecf8bf66c54f1fed91",
         intel: "3a07d926ef8d203d1f8b6b156b7e8f17f3f5431388682a0c42cc8fa3caa1439f"

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
