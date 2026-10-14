cask "bitmap-font-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "e1a82501b3f2ed80a947c886dc942f8af4333fb59e2c756185930b558e5f2a2a",
         intel: "291d8859199848bcad6e75834df7feae4913eec855d47614fedcc38d4d9d6ee5"

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
