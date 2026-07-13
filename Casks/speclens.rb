cask "speclens" do
  version "1.1.0"
  sha256 "6b1ec3fafa59a9cf1ef7812c6b3c08317c4b1fc30da21c53befb85fc29e8c9bf"

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
