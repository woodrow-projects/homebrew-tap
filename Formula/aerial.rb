# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/mattasaminew/aerial"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/mattasaminew/aerial/releases/download/cli-v0.1.0/aerial-darwin-arm64.tar.gz"
      sha256 "81a6b6ebc44ab00e182c7579a74018cfdb7fb2004eec0004d48c07d36f4a4fe0"
    end
    on_intel do
      url "https://github.com/mattasaminew/aerial/releases/download/cli-v0.1.0/aerial-darwin-x64.tar.gz"
      sha256 "4063215a2e052edf23232e91685608e8ab021343238f89d2690b6a34d325a0c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mattasaminew/aerial/releases/download/cli-v0.1.0/aerial-linux-arm64.tar.gz"
      sha256 "aa6e885490f66a0637a27cdaffba0745fc5e6cc67da2bef584515f6fe356b222"
    end
    on_intel do
      url "https://github.com/mattasaminew/aerial/releases/download/cli-v0.1.0/aerial-linux-x64.tar.gz"
      sha256 "97c6787dcc938fe67d4cc28ee4843493de85c7599c8f6e6d916957b09d51b8ff"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
