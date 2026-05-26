cask "bannershift" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/remerle/BannerShift/releases/download/v#{version}/BannerShift-#{version}.dmg",
      verified: "github.com/remerle/BannerShift/"
  name "BannerShift"
  desc "Repositions notification banners onto a 3x3 grid"
  homepage "https://github.com/remerle/BannerShift"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "BannerShift.app"

  uninstall quit: "dev.emerle.bannershift"

  zap trash: [
    "~/Library/Caches/dev.emerle.bannershift",
    "~/Library/HTTPStorages/dev.emerle.bannershift",
    "~/Library/Logs/BannerShift.log",
    "~/Library/Preferences/dev.emerle.bannershift.plist",
    "~/Library/Saved Application State/dev.emerle.bannershift.savedState",
  ]
end
