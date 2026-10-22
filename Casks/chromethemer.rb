cask "chromethemer" do
  arch arm:   "arm64",
       intel: "x64"

  version "0.2.0"
  sha256 arm:   "b50d7dbca321d92e8eac6e56646c832f5ffd542e6a0d69f55eb59150722299bb",
         intel: "03e3368b5f1850b8ea8a82dde83471bb0befa8899e55ec68224ef92bfc86a1d1"

  url "https://github.com/pilotbellyt-spec/ChromeThemer/releases/download/#{version}/ChromeThemer-macos-#{arch}.dmg"
  name "ChromeThemer"
  desc "Firefox userChrome.css on Chrome"
  homepage "https://github.com/pilotbellyt-spec/ChromeThemer"

  depends_on :macos

  app "ChromeThemer.app"

  zap trash: [
    "~/Library/Caches/dev.chromethemer.desktop",
    "~/Library/WebKit/dev.chromethemer.desktop",
  ]
end
