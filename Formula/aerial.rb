# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/woodrow-projects/aerial"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-arm64.tar.gz"
      sha256 "d2d585ec7ea50bbc2b823babdb243fa427933fc0a2ea759fa001f5418a82feb6"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-x64.tar.gz"
      sha256 "b71c9ecfba39059d727c673333c9a30cb8fdec6860bcb92887c86e17e99b0b44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-arm64.tar.gz"
      sha256 "72d50567a3e5fc91fe3859573add43206498944eafd278c06cc9b7d753beb7c6"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-x64.tar.gz"
      sha256 "eb5c22cb8232de84160ce22f01b131eef8b5e34869341db466887495a490bdb0"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
