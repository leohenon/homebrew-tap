class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.1-ocv.3.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.1-ocv.3.51/ocv-darwin-arm64.zip"
      sha256 "2329b7728c0020b7f48cbec77df1739afdc266088695caddcc619d480e5fbaef"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.1-ocv.3.51/ocv-darwin-x64.zip"
      sha256 "b0224ae6a25e9ea27ed09c3357dcb5d7158a943aca3da16862b76f9bd9a0c1bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.1-ocv.3.51/ocv-linux-arm64.tar.gz"
      sha256 "108f4f82d1b8383a11045814493d2357cb8d60bbd7b90c8672922861ece19497"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.1-ocv.3.51/ocv-linux-x64.tar.gz"
      sha256 "7d183f9cce1334cf29fd08761b9d3a348437ffdf54e2dbf3956cd7c8efea54ee"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
