cask "plexo" do
  arch arm:   "arm",
       intel: "x"

  version "1.0.0-rc.11"
  sha256 arm:   "2747df41bee7a676596788b6080d2bb20fbfb7dbefd9b1680291e0a2ba17420c",
         intel: "505325c7919db731f6804bba34dfe14757cd476eb264af44654b3a69606c73f5"

  url "https://github.com/anmolkapil/plexo/releases/download/v#{version}/plexo-#{version}-#{arch}64.dmg"
  name "Plexo"
  desc "Speed up downloads by combining multiple network connections in parallel"
  homepage "https://anmolkapil.github.io/plexo/"

  livecheck do
    skip "Pre-release versions are maintained manually"
  end

  depends_on macos: :ventura

  app "Plexo.app"

  zap trash: []
end
