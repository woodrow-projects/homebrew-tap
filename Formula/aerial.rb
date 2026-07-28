# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/woodrow-projects/aerial"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-arm64.tar.gz"
      sha256 "c02e54100b1024e704054c61945bf597d6cc5e9066aaf2841811e5a94a7821f1"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-darwin-x64.tar.gz"
      sha256 "3137a8967c15bc1f1db3f634cb0fb2ec010da49ccd22d961059395ebab005059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-arm64.tar.gz"
      sha256 "9d8a119c7d6a77083798f565e3e110c96a690e15bb503ea9dea7e5f1c6c65040"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.0/aerial-linux-x64.tar.gz"
      sha256 "d81e2b040e01b02364d4ad175b756fab367f65498686c8da8867ae410ded0268"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
