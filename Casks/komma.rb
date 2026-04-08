cask "komma" do
  version "0.2.0"
  sha256 "0931509514892f4e95ca57a1eed8d285de792b189971542720d37673551be2a2"

  url "https://github.com/0xSmick/komma/releases/download/v#{version}/Komma-#{version}-universal.dmg"
  name "Komma"
  desc "AI-powered document editor for writers"
  homepage "https://github.com/0xSmick/komma"

  depends_on macos: ">= :ventura"

  app "Komma.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Komma.app"]
  end

  zap trash: [
    "~/.komma",
    "~/Library/Application Support/Komma",
    "~/Library/Preferences/com.komma.app.plist",
  ]
end
