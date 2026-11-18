cask "freemymacos" do
  version "1.0.1"
  sha256 "e6915046ebd3d8fb7b27edeb785d097ba8f849057f73137f3b53d79f60a5eeb7"

  url "https://github.com/biggypanda/FreeMyMacOS/releases/download/v#{version}/FreeMyMacOS.dmg"
  name "FreeMyMacOS"
  desc "Clears developer and app caches and shows what is using memory"
  homepage "https://freemymacos.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "FreeMyMacOS.app"

  zap trash: [
    "~/Library/Caches/com.pandacle.freemymacos",
    "~/Library/Preferences/com.pandacle.freemymacos.plist",
    "~/Library/Saved Application State/com.pandacle.freemymacos.savedState",
  ]
end
