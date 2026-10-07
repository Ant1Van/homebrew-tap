cask "skillhub" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "41d8b5d440a74319d76fc38cd8acdec75ff72ea163a1d59cdebd3ecabed499b1",
         intel: "e39519557c435eb468bbc62141ffe1ff99d9ab08076f0aa040966e13c9915c2d"

  url "https://github.com/Ant1Van/SkillHub/releases/download/v#{version}/SkillHub_#{version}_#{arch}.dmg"
  name "SkillHub"
  desc "Desktop manager and marketplace for Claude Code skills"
  homepage "https://github.com/Ant1Van/SkillHub"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "SkillHub.app"

  zap trash: [
    "~/Library/Application Support/com.skillhub.desktop",
    "~/Library/Saved Application State/com.skillhub.desktop.savedState",
  ]
end
