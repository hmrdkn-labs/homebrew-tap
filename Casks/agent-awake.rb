cask "agent-awake" do
  version "0.1.2"
  sha256 "05d8b8f43187ea1486f0c74b70a65983c053c23652cf9e6e147d82ad1b8ee4c0"

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
