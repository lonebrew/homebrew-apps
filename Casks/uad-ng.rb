cask "uad-ng" do
  arch intel: "-intel"

  version "1.3.1"
  sha256 arm:   "3fa3517a1b8df31987e20c3f0f921592c902d42bfb11f7db1a03206ddcd0813f",
         intel: "aa7eba1272543dfce238e51a2a42795fbbd6f6dd7f00034667c5ba4852d3a97a"

  url "https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/download/v#{version}/uad-ng-macos#{arch}.tar.gz"
  name "Universal Android Debloater Next Generation"
  name "UAD-NG"
  desc "Cross-platform GUI written in Rust using ADB to debloat non-rooted Android"
  homepage "https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/"

  depends_on cask: "android-platform-tools"
  depends_on :macos

  binary "uad-ng-macos#{arch}", target: "uad"

  zap trash: [
    "~/Library/Application Support/uad",
    "~/Library/Caches/uad",
  ]
end
