cask "chromethemer" do
  arch arm:   "arm64",
       intel: "x64"

  version "0.2.1"
  sha256 arm:   "98cc4a027b80e972167326acaf553ce78bf333d304adee79cdee81089289b344",
         intel: "40778ddd4181c227d2da7a591c17fc2bbfade915bc09c1c1bdb3f7e1e671d4cb"

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
