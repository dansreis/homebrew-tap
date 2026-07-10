cask "speclens" do
  version "1.0.3"
  sha256 "334b9a4426bb1e00f3fdffae8995ff2d827e2d9c8af4636b241667788b354ec8"

  url "https://github.com/dansreis/speclens/releases/download/v#{version}/SpecLens_#{version}_aarch64.dmg"
  name "SpecLens"
  desc "Desktop reader for OpenSpec projects"
  homepage "https://github.com/dansreis/speclens"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "SpecLens.app"

  zap trash: [
    "~/Library/Application Support/com.danielreis.speclens",
    "~/Library/Caches/com.danielreis.speclens",
    "~/Library/Preferences/com.danielreis.speclens.plist",
    "~/Library/Saved Application State/com.danielreis.speclens.savedState",
    "~/Library/WebKit/com.danielreis.speclens",
  ]
end
