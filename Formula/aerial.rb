# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/woodrow-projects/aerial"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-darwin-arm64.tar.gz"
      sha256 "86e7717d65b15bda0955869ed634f83e56f564e931546c9dfcee69fac348b0b6"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-darwin-x64.tar.gz"
      sha256 "5a5c2b2b8afd0e92e009a214ff24dafd012f7372e09419055bcd64526893a10f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-linux-arm64.tar.gz"
      sha256 "38837d93db74ff8e48c4e9c1053ec4c98c2b1c56d4fd7fb7bd1258861d8d88a5"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-linux-x64.tar.gz"
      sha256 "618228221cf8eb2b0e00130ed26cb18a3f42d45bb5ef1c8b48a307b27b80ccfe"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
