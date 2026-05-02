class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.31-ocv.3.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.31-ocv.3.32/ocv-darwin-arm64.zip"
      sha256 "d56f2c3e883c5006346f22f612f9fdc42cc5d71fc18021f62bd6e8ffe68c82e6"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.31-ocv.3.32/ocv-darwin-x64.zip"
      sha256 "20a3264b0b223a206c723217a0b2be1d0403bebfbbd7ce913aacd3b4e407c77b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.31-ocv.3.32/ocv-linux-arm64.tar.gz"
      sha256 "a5a9f52e236e86b30ffaa0e62f264ea0a21c989c044c282829fb9e04f8a66d8a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.31-ocv.3.32/ocv-linux-x64.tar.gz"
      sha256 "5fb389f2ec01162b788f637c3eaf4645932af1bfa416f3db10deaddeb15cc5e0"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
