# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/woodrow-projects/aerial"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-arm64.tar.gz"
      sha256 "7be995872cc7b28864511fbda54582dc78e37d9fc3999aba3c3d29cef02f5fcc"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-x64.tar.gz"
      sha256 "f206a61ea3586b6a44823e4c276b9f48841579b5822e98643d2960b740c72e88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-arm64.tar.gz"
      sha256 "e170da54c315aed0a16e6ac6b25dc10a393bbebca39464893fe4d18fd03b5a54"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-x64.tar.gz"
      sha256 "b85e93f2da96cc84701db908e4aba91649d16ec823ec9676a5247c5bdf54f9df"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
