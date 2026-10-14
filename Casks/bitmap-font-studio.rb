cask "bitmap-font-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "80d1b9ae40ca42dcd65cb4270082735665c53b687b3201ec3031761de6853182",
         intel: "e0a23b2be022b6c510e2059b764a0d5e45aedfc3bc1e4a6e79054a8431b607dd"

  url "https://github.com/mihaildem/homebrew-tap/releases/download/v#{version}/Bitmap-Font-Studio-#{version}-#{arch}.dmg"
  name "Bitmap Font Studio"
  desc "Photoshop Bitmap Font Generator & Editor"
  homepage "https://github.com/mihaildem/bitmap-font-studio"

  auto_updates true
  depends_on macos: :big_sur

  app "Bitmap Font Studio.app"

  zap trash: [
    "~/Library/Application Support/bitmap-font-studio",
    "~/Library/Preferences/com.bitmapfontstudio.app.plist",
    "~/Library/Saved Application State/com.bitmapfontstudio.app.savedState"
  ]
end
