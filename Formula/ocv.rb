class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.34-ocv.4.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.34-ocv.4.12/ocv-darwin-arm64.zip"
      sha256 "b63ab876a2fff153991022b1d5256d0367e5ae20f3daad6c842d085e772bbfab"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.34-ocv.4.12/ocv-darwin-x64.zip"
      sha256 "007663885139bc2cb621a529ea2344120082cfa24f7b484c38121af670500f42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.34-ocv.4.12/ocv-linux-arm64.tar.gz"
      sha256 "b89576f8d24b5368a0b38d99c2a5e41ea513245f691a6c8bce0aa99dd7be06e6"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.34-ocv.4.12/ocv-linux-x64.tar.gz"
      sha256 "e72f5c370caeaa2994fe411174aa6f1ade62f98eee0f5c959c553061222f5f2e"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
