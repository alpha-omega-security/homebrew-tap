cask "scrutineer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2026.07.14.1"
  sha256 arm:          "a1b1b642c65de7273ea336437ea379163977f6d02318af61bb130ec8a2234d00",
         x86_64:       "eb0a6ce59430cee07f945d0429337cfb73c9927b8ddb3f1ca29c148d6dae6049",
         x86_64_linux: "038c0350192ed9c1fb19dc7a2784f7bb5917a9809832d3de100fa2715be29069",
         arm64_linux:  "1617a5d0e36b0b85c5d6303c122f889230dc1da1dc7574e966a9a8fab397ba91"

  url "https://github.com/alpha-omega-security/scrutineer/releases/download/v#{version}/scrutineer-#{version}-#{os}-#{arch}.tar.gz"
  name "Scrutineer"
  desc "Security through scrutiny"
  homepage "https://github.com/alpha-omega-security/scrutineer"

  binary "scrutineer"

  # Remove quarantine attribute on macOS, since the binary is not currently notarized
  on_macos do
    postflight do
      system_command "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "#{staged_path}/scrutineer"]
    end
  end

  # No zap stanza required
end
