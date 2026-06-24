cask "kde-connect" do
  arch arm: "arm64", intel: "x86_64"

  version "master-6325"
  sha256 arm:   "7f908b07fa4ff005d276b2fdae7f24b7c3b7a1d26daa6f1b5e1a55b9d6ae29e1",
         intel: "ae85dd5c14f703c85f3fb06b8510570d9df22c0bfa05d1bf893caab5e3040479"

  url "https://cdn.kde.org/ci-builds/network/kdeconnect-kde/master/macos-#{arch}/kdeconnect-kde-#{version}-macos-clang-#{arch}.dmg"
  name "KDE Connect"
  desc "Communication between all your devices. Phone, Text, Photos and more"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/network/kdeconnect-kde/master/macos-#{arch}/"
    regex(/href="kdeconnect-kde-([a-z]+-\d+)-macos-clang-#{arch}\.dmg/i)
  end

  depends_on macos: :ventura

  app "KDE Connect.app"

  zap trash: [
    "~/Library/Application Support/kdeconnect.app",
    "~/Library/Caches/kdeconnect.app",
    "~/Library/Caches/kdeconnect.sms",
    "~/Library/Preferences/kdeconnect",
  ]
end
