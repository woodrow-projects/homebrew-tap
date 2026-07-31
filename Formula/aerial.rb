# Rendered by make-formula.sh at release time; pushed to woodrow-projects/homebrew-tap
# (the tap lives in the org; release assets stay on the aerial repo's Releases).
class Aerial < Formula
  desc "Provision a self-hosted Aerial radio station anywhere"
  homepage "https://github.com/woodrow-projects/aerial"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.1/aerial-darwin-arm64.tar.gz"
      sha256 "239cff4a23bfc23b80f7a93d75bd95da723c76839702c637b5d886f675540279"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.1/aerial-darwin-x64.tar.gz"
      sha256 "039aca1023fa33004d461db3a4d72a4b4943a50401c52a5fd7544e9e57b58cd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.1/aerial-linux-arm64.tar.gz"
      sha256 "16e93ee0a1b66797fdc5ffb14f10b79668a1600c287ecc4535c7b01838e0e2ae"
    end
    on_intel do
      url "https://github.com/woodrow-projects/aerial/releases/download/v0.1.1/aerial-linux-x64.tar.gz"
      sha256 "706e48a25aca2c8fdf9ad472b8dd65d811a62d04b085b30b96da64250a376616"
    end
  end

  def install
    bin.install "aerial"
  end

  test do
    system bin/"aerial", "--version"
  end
end
