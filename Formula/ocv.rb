class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.12-ocv.3.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.65/ocv-darwin-arm64.zip"
      sha256 "8bce6f57d6a756a16ae166a6abfbf1a86f600fec2705fa0e2a64b65a5a1af84a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.65/ocv-darwin-x64.zip"
      sha256 "233eb1776a425c80f2fbea60d47ba92eaf2b9ad4bce17d6ed7bcc36ad2ba11ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.65/ocv-linux-arm64.tar.gz"
      sha256 "8515d1639eb0ccd7d73038d2af33a8b4125bf59d6be8fc0b29e89010ef989688"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.65/ocv-linux-x64.tar.gz"
      sha256 "f478d43d32f54b27335e1d45c86f3b95cdf0c440d76087d5203ee1ccb30252fe"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
