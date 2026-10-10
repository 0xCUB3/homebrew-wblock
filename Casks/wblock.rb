cask "wblock" do
  version "3.2.0"
  sha256 "a29d167e5da733188796bc26a0aee1454ee113c814e19e8e4b9f12b6b749c85a"

  url "https://github.com/0xCUB3/wBlock/releases/download/#{version}/wBlock-#{version}.dmg"

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
