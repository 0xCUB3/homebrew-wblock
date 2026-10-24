cask "wblock" do
  version "3.2.1"
  sha256 "9e8125331b8f13922419bf9089dca530ff905ebd3aa652fe42443336e40041e2"

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
