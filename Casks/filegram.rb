cask "filegram" do
  version "0.2.4"
  sha256 "69e44f3e1f04dd976a8b75309d8dc8f7d2901099b15dfcf45a8d7fce8460c431"

  url "https://github.com/filegram/filegram-desktop/releases/download/v#{version}/filegram-macos-universal.dmg",
      verified: "github.com/filegram/filegram-desktop/"
  name "Filegram"
  desc "Disk space analyzer with an interactive treemap"
  homepage "https://github.com/filegram/filegram-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Filegram.app"

  zap trash: [
    "~/Library/Preferences/io.github.stan220.filegram.plist",
    "~/Library/Saved Application State/io.github.stan220.filegram.savedState",
  ]
end
