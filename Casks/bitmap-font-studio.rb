cask "bitmap-font-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "fcb673b4f1092a08c4b549aa62d74b2b8b7f09768dcf89d667027df1df329760",
         intel: "bec4a14d1085201055179b72e4f33d1213225fc777c065b96521754e813edd21"

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
