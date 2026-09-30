cask "uad-ng" do
  arch intel: "-intel"

  version "1.2.0"
  sha256 arm:   "bba4bfdae1f716717e6094fbd9fd88ed859a43ae023bdecd4c42abacc523a7bd",
         intel: "1dca8136499c5fc3785ce832fbf572575ec1f88f3ecdeb9ac829cbc639682b33"

  url "https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/download/v#{version}/uad-ng-macos#{arch}.tar.gz"
  name "Universal Android Debloater Next Generation"
  name "UAD-NG"
  desc "Cross-platform GUI written in Rust using ADB to debloat non-rooted Android devices"
  homepage "https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/"

  auto_updates true
  depends_on cask: "android-platform-tools"
  depends_on :macos

  binary "uad-ng-macos#{arch}", target: "uad"

  zap trash: "~/Library/Caches/uad"
end
