cask "skillhub" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "8e488691c125d1734797601ca94fc5f95fc0483daa353f8520abc2a0781f6fd6",
         intel: "53c9a4679747555ddb60d263df0c828a258c2a4f34df0d1d5ceb8c22d7e61e84"

  url "https://github.com/Ant1Van/SkillHub/releases/download/v#{version}/SkillHub_#{version}_#{arch}.dmg"
  name "SkillHub"
  desc "Universal desktop manager and marketplace for AI coding agent skills"
  homepage "https://github.com/Ant1Van/SkillHub"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "SkillHub.app"

  postflight do
    system_command "xattr",
                   args: ["-d", "-r", "com.apple.quarantine", "#{appdir}/SkillHub.app"]
  rescue
    nil
  end

  zap trash: [
    "~/Library/Application Support/com.skillhub.desktop",
    "~/Library/Saved Application State/com.skillhub.desktop.savedState",
  ]
end
