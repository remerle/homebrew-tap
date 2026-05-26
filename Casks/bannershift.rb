cask "bannershift" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/remerle/BannerShift/releases/download/v#{version}/BannerShift-#{version}.dmg",
      verified: "github.com/remerle/BannerShift/"
  name "BannerShift"
  desc "Repositions macOS notification banners onto a 3x3 grid"
  homepage "https://github.com/remerle/BannerShift"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "BannerShift.app"

  uninstall quit: "com.emerle.BannerShift"

  zap trash: [
    "~/Library/Logs/BannerShift.log",
    "~/Library/Preferences/com.emerle.BannerShift.plist",
    "~/Library/Caches/com.emerle.BannerShift",
    "~/Library/HTTPStorages/com.emerle.BannerShift",
    "~/Library/Saved Application State/com.emerle.BannerShift.savedState",
  ]
end
