cask "pomo" do
  version "0.1.0"
  # Placeholder: scripts/update-cask.sh rewrites this line with the DMG's checksum when the release is published.
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/hmrdkn-labs/pomo/releases/download/v#{version}/Pomo-#{version}.dmg"
  name "Pomo"
  desc "Pomodoro timer in the menu bar, with a CLI for you and your AI agents"
  homepage "https://github.com/hmrdkn-labs/pomo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Pomo.app"
  binary "#{appdir}/Pomo.app/Contents/Helpers/pomo"

  uninstall quit: "dev.hamardikan.pomo"

  zap trash: [
    "~/.pomo",
    "~/Library/Preferences/dev.hamardikan.pomo.plist",
  ]
end
