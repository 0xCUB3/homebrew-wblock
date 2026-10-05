cask "wblock" do
  version "3.1.3"
  sha256 "6861b3c0786551eaab09995f991f02ef28ac064c5a3106ca0bfe397c15b72f1f"

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
