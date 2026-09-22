cask "wblock" do
  version "3.1.1"
  sha256 "f098a74170eaf2472f5bf55c4e1135d880dd4577de9224e9a4fadaf7e94a9f1f"

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
