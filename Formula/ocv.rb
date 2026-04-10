class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.3-ocv.3.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.3-ocv.3.22/ocv-darwin-arm64.zip"
      sha256 "a62972049b1d388f80714d0fc4f7a52bb4432fc9a29e7c57682b550b1da99292"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.3-ocv.3.22/ocv-darwin-x64.zip"
      sha256 "3fbe1027825dafefdef4268b2727849b16198c6617694d744c07b4439754484a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.3-ocv.3.22/ocv-linux-arm64.tar.gz"
      sha256 "47dff85634b8b00f76f2a9c77969a75dda9e88bae34ac7cca5e9aa4fb13ff5d4"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.3-ocv.3.22/ocv-linux-x64.tar.gz"
      sha256 "bfc45e26eb5945e281fc747b04cbe04c2059a9f44e955a0e0d6cc67e1d36ebb2"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
