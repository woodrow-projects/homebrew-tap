# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/woodrow-projects/aerial"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-darwin-arm64.tar.gz"
      sha256 "6ed252933c86b676ce9f3e5e17dbe55fc4e7f3fcf175d4eaf43797867b43f266"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-darwin-x64.tar.gz"
      sha256 "6aba01da006a6da9fe6e4484e4f203d4b70ced67d8aa9663687c9e85d2b845fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-linux-arm64.tar.gz"
      sha256 "53d292d86ca974c972a3ec0fd25687dcc9d896b7faf876ba7a46fcc593ff9556"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-linux-x64.tar.gz"
      sha256 "f05a3614e643555520dc0f2f88b4dc4f3408667e9296871d94ac2ceba656711e"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
