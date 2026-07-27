# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/woodrow-projects/aerial"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-darwin-arm64.tar.gz"
      sha256 "a7da4cb6e5ed62e0d57ad6fc335b5f44d0da5665b4645acea42fa7e451dd8d47"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-darwin-x64.tar.gz"
      sha256 "518ab09da3c18c9fa164300ba5bf067ee098a55acff724709b84608adc970dbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-linux-arm64.tar.gz"
      sha256 "e26184e6e9773a9419ad30a83178a5473ba4831c8e8cdd757a29d6342c833f14"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/cli-v0.1.0/aerial-linux-x64.tar.gz"
      sha256 "1c391a80d9935239d9a229ac63b7d92de31d86972ad0af76b7cc3bf3c2107455"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
