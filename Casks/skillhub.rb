cask "skillhub" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "f75922ebab4d73f6ed012c8d22037aebd8079075cf67bc66cffb7aa2b1331a28",
         intel: "e1371d3631edf6cfea33d7e7baff9a78e783b75cb2b77922820d72771b20d915"

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

  zap trash: [
    "~/Library/Application Support/com.skillhub.desktop",
    "~/Library/Saved Application State/com.skillhub.desktop.savedState",
  ]
end
