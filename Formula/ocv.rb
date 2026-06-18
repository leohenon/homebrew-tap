class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.8-ocv.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.8-ocv.4.1/ocv-darwin-arm64.zip"
      sha256 "72f6b48f9a29d7d0e67fe9a851d3add81cac870f123176405fe9a794b69c2b09"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.8-ocv.4.1/ocv-darwin-x64.zip"
      sha256 "4b78da8bea9d8a1cf38f9219206a2915ab96e2698622448ffe37ae93446df89f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.8-ocv.4.1/ocv-linux-arm64.tar.gz"
      sha256 "33236d6d17c73315c17c7c94ef79c3e524a5c39750b24a505802a31702484773"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.8-ocv.4.1/ocv-linux-x64.tar.gz"
      sha256 "1b80c4087f8a35e4dfb06fe46ea000e935ad242141b72183161bac6ac1c02756"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
