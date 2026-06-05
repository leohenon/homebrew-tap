class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.16.2-ocv.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.16.2-ocv.4.0/ocv-darwin-arm64.zip"
      sha256 "709ed2ed2e73cf38d3f714d28eb450a91978fe186df06bad4efaed499a9db69f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.16.2-ocv.4.0/ocv-darwin-x64.zip"
      sha256 "824f75d7c22544a791688c4d2853122815210effeab89a2461aa2d80fa7630b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.16.2-ocv.4.0/ocv-linux-arm64.tar.gz"
      sha256 "f0a6d10b40b797790597c05b55642d11dbd7aad719dfdd9cdfe3f4019307632f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.16.2-ocv.4.0/ocv-linux-x64.tar.gz"
      sha256 "168f4bd2ca580949e93bf75b80f5417781ecd1aca04d0d8021303a40dfdf7e6b"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
