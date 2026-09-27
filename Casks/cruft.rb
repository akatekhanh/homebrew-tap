cask "cruft" do
  version "0.2.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/akatekhanh/cruft/releases/download/v#{version}/Cruft-macOS.zip"
  name "Cruft"
  desc "Calm storage cleaner for macOS: scan by what you do, review by risk level, clean to the Trash"
  homepage "https://github.com/akatekhanh/cruft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Cruft.app"

  zap trash: [
    "~/Library/Preferences/dev.noddle.cruft.plist",
    "~/Library/Saved Application State/dev.noddle.cruft.savedState",
  ]

  caveats <<~EOS
    Cruft is not notarized (that needs a paid Apple Developer account), so
    macOS will refuse the first launch. Either right-click Cruft.app → Open,
    or clear the quarantine flag:

      xattr -d com.apple.quarantine "#{appdir}/Cruft.app"

    Or reinstall with the flag never set:

      brew reinstall --cask --no-quarantine cruft
  EOS
end
