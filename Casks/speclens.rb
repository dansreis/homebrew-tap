cask "speclens" do
  version "1.1.1"
  sha256 "836d2821de87d565a7d4a0526f86af1b3e631c2d263e341d30f901918d207970"

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
