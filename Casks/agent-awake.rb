cask "agent-awake" do
  version "0.1.4"
  sha256 "478cec0659b181b215ebccbd88bb6955efb6dea331de5428a8b8df37eaef3d3c"

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
