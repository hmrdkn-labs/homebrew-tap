cask "agent-awake" do
  version "0.1.3"
  sha256 "298ba8b013a1eb9a7ad4a43aa5a8a32330ee3bd0e986d25a66961c30e8388a02"

  url "https://github.com/hmrdkn-labs/agent-awake/releases/download/v#{version}/AgentAwake-#{version}.dmg"
  name "Agent Awake"
  desc "Stay awake while AI coding agents work, then sleep and ping your phone"
  homepage "https://github.com/hmrdkn-labs/agent-awake"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Agent Awake.app"

  uninstall quit: "com.hamardikan.agent-awake"

  zap trash: [
    "~/.agent-awake",
    "~/Library/Preferences/com.hamardikan.agent-awake.plist",
  ]
end
