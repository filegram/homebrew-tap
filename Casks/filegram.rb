cask "filegram" do
  version "0.2.7"
  sha256 "45bec7dd1eaad50749f0a5ca3ae43aface1cb84ac876cab20003789777f07e43"

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
  binary "#{appdir}/Filegram.app/Contents/MacOS/filegram"

  zap trash: [
    "~/Library/Preferences/io.github.stan220.filegram.plist",
    "~/Library/Saved Application State/io.github.stan220.filegram.savedState",
  ]
end
