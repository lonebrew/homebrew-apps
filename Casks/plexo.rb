cask "plexo" do
  arch arm:   "arm",
       intel: "x"

  version "1.0.0-rc.15"
  sha256 arm:   "3e05a6ada7e50bf401472c0dbf14a48a709404d36a4b8bf8572ea88a3e57e64d",
         intel: "1e02f606efbf0ba1b81bc55d0e48599bec39ba44a5734d9c17d07db46b0453ed"

  url "https://github.com/anmolkapil/plexo/releases/download/v#{version}/plexo-#{version}-#{arch}64.dmg"
  name "Plexo"
  desc "Speed up downloads by combining multiple network connections in parallel"
  homepage "https://anmolkapil.github.io/plexo/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-rc\.\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.filter_map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        match[1] if match
      end
    end
  end

  depends_on macos: :ventura

  app "Plexo.app"
end
