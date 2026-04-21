cask "wblock" do
  version "2.0.2"
  sha256 "445e7e6f3fcc0bebbea603735ded428ad3816351b279090861c00b3fa9784357"

  url "https://github.com/0xCUB3/wBlock/releases/download/#{version}/wBlock-#{version}.dmg",
      verified: "github.com/0xCUB3/wBlock/"

  name "wBlock"
  desc "Safari content blocker for macOS, iOS, and iPadOS"
  homepage "https://github.com/0xCUB3/wBlock"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "wBlock.app"

  zap trash: [
    "~/Library/Preferences/skula.wBlock.plist",
    "~/Library/Caches/skula.wBlock",
    "~/Library/Application Support/wBlock",
    "~/Library/Saved Application State/skula.wBlock.savedState",
  ]
end
