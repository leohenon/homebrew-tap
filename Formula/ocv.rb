class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.21-ocv.3.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.21-ocv.3.27/ocv-darwin-arm64.zip"
      sha256 "93c8eea236f2b8629642daff09f6ae7c29d6b70bf41ccdf0dc03e55b0229adc4"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.21-ocv.3.27/ocv-darwin-x64.zip"
      sha256 "f06ba3b0ce9bee6175f66bc0dfb92149d26e52a09383e4fd09f14695ff5be864"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.21-ocv.3.27/ocv-linux-arm64.tar.gz"
      sha256 "3e28790d8b85e32a5ec3db2e1bcca43517f31373cd30f9c79670f90cc20b7112"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.21-ocv.3.27/ocv-linux-x64.tar.gz"
      sha256 "183b4506a154b0c23d5762191b1351e9f05daf3480377b1ebff41a35e84c6d62"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
