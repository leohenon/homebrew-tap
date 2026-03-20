class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.2.27-vim.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.4/ocv-darwin-arm64.zip"
      sha256 "083a58d772379a4796e9923b94abac84d531c177a0a292f94f9dcbf98ff24c57"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.4/ocv-darwin-x64.zip"
      sha256 "26fd4d9e10484d716b6d046b2fd6e67c5f953903d940c14d89cf631c430109e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.4/ocv-linux-arm64.tar.gz"
      sha256 "de1e89684b054168c603ccfe9ec57a2147525083533d80af2247e673ff8d7807"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.4/ocv-linux-x64.tar.gz"
      sha256 "6dfbbefeb967ee52749d584b0ed09eff46c16c0d3a13e9831124f53472742c5a"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
