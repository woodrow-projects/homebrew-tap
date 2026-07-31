# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/woodrow-projects/aerial"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-arm64.tar.gz"
      sha256 "560e46018e39c5fbf6650752ab817a433bf54ede5802ef04acbbb4aa88f4e8da"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-x64.tar.gz"
      sha256 "b67e508db57356be800fdac16ff5669c306faae1dbb49e026dce439b4482359c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-arm64.tar.gz"
      sha256 "932afdfc449c8225dcfaded62a48a98e6e670e2d4833634430dff75cdbfd5d2a"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-x64.tar.gz"
      sha256 "b35ad5bee4c6b1fafe5020d0d98abf43a5e294330e4df743645144a786f87c3b"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
