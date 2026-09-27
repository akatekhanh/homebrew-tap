cask "cruft" do
  version "0.2.0"
  sha256 "b4b294e147c4ca7438346fbb647a0f810c5a732718a37667ca84d8f9634da035"

  url "https://github.com/akatekhanh/cruft/releases/download/v#{version}/Cruft-macOS.zip"
  name "Cruft"
  desc "Calm storage cleaner: honest risk levels, cleans to the Trash"
  homepage "https://github.com/akatekhanh/cruft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Cruft.app"

  zap trash: [
    "~/Library/Preferences/dev.noddle.cruft.plist",
    "~/Library/Saved Application State/dev.noddle.cruft.savedState",
  ]

  caveats <<~EOS
    Cruft is not notarized (that needs a paid Apple Developer account). If
    macOS refuses the first launch, right-click Cruft.app → Open, or clear
    the quarantine flag:

      xattr -d com.apple.quarantine "#{appdir}/Cruft.app"
  EOS
end
