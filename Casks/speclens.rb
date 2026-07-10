cask "speclens" do
  version "1.0.1"
  sha256 "c906ff9565aed56b9e259df6b9b9e1bcd233b32beeeb45cbf32f12edd1ace9b4"

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
