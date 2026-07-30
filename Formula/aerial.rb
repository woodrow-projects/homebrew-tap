# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/woodrow-projects/aerial"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-arm64.tar.gz"
      sha256 "d2bf2eea1cba0149fe9c24cf4469de5251f19e2b478f230eeb58ed16dabdf121"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-x64.tar.gz"
      sha256 "24ea6d126f5529befb47412d16e866641559bd147b7e58d1986aefb35a530ddd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-arm64.tar.gz"
      sha256 "ddcdd82119bff43b9290005f4589dfa3ede7ce0da8c403c114eb7b02e2e8ce49"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-x64.tar.gz"
      sha256 "cd428a883811a65593e7d40f25180f52b1e700ea1bea47d82479ad01ddfad73a"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
