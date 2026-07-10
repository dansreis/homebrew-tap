cask "speclens" do
  version "1.0.0"
  sha256 "0c66215bf6e490883f1b02055124b099d2c7b9934247e7e2d8d024634f1d1684"

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
