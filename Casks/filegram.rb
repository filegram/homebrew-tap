cask "filegram" do
  version "0.2.5"
  sha256 "4e34a0751138a026fd8a315c218883ed9b4f9f7584194b014bd44d1a36dee3af"

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
