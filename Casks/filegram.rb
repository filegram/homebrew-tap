cask "filegram" do
  version "0.2.6"
  sha256 "3b1d48820ca1cd739504edd351b58b4b3273e9a255cef8db142a7e004932df28"

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
