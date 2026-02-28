cask "komma" do
  version "0.1.0"
  sha256 "dbbabb2cfe585592eadae7dc8b6f1e272c2f99feac2e3f40f0c8da614e01f140"

  url "https://github.com/0xSmick/komma/releases/download/v#{version}/Komma-#{version}-arm64.dmg"
  name "Komma"
  desc "AI-powered document editor for writers"
  homepage "https://github.com/0xSmick/komma"

  depends_on macos: ">= :ventura"

  app "Komma.app"

  zap trash: [
    "~/.komma",
    "~/Library/Application Support/Komma",
    "~/Library/Preferences/com.komma.app.plist",
  ]
end
