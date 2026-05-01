class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.30-ocv.3.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.30-ocv.3.30/ocv-darwin-arm64.zip"
      sha256 "3fa8335ca0708e74b2c0b63d8e10398e649feec5ea39b5eca5daff30bfca02dc"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.30-ocv.3.30/ocv-darwin-x64.zip"
      sha256 "c9dc0bf2bbcdad0735a0a7459508972ac8a6fb93fa2d0ae9a255a7acb6a33b9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.30-ocv.3.30/ocv-linux-arm64.tar.gz"
      sha256 "83a433560f919b9e5d99d37b5d9765e3d18bb760cdf7c6f1f0cca4fab7ab8394"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.30-ocv.3.30/ocv-linux-x64.tar.gz"
      sha256 "115e24dcdc490412b2155a9bd4e0d21c5a1ac18190ff4f911bc2c32fe513c214"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
