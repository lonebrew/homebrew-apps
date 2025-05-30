cask "kde-connect" do
  arch arm: "arm64", intel: "x86_64"

  version "master-5061"
  sha256 arm:   "fd7e12a7355a59d0be8dfa5986f407107753a50bfc9255208d92fb4f2b49aaf8",
         intel: "8206e06bcade977f89f01faf24e849f9aebf833b213a9e18f03187bba9261a82"

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
