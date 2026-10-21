cask "chromethemer" do
  arch arm:   "arm64",
       intel: "x64"

  version "0.1.0"
  sha256 arm:   "7d81c57681285b3a98b48895e143f9cac105009119def606522b8d9f449b12b6",
         intel: "191f4b27eefe9b4d17c9075bb3b4e2b87df31891b915e1fb9c11d521cd54f235"

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
