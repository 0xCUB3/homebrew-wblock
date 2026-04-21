cask "wblock" do
  version "2.0.2"
  sha256 "d59e141fdc437cd83cbd43edd69e85f550d98b285733f98c321d6a626fab12b3"

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
