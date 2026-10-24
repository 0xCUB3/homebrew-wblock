cask "wblock" do
  version "3.2.2"
  sha256 "c365749017e0e943850fe36c3f14fa10c28e19c142c19987c8e4984592c3bfdb"

  url "https://github.com/0xCUB3/wBlock/releases/download/#{version}/wBlock-#{version}.dmg"

  name "wBlock"
  desc "Safari ad blocker with custom filters and userscripts"
  homepage "https://skula.me/project/wblock/"

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
