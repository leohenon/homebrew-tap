# typed: false
# frozen_string_literal: true

class OcvV2 < Formula
  desc "OpenCode V2 with first-class Vim and transcript copy modes"
  homepage "https://github.com/leohenon/opencode-vim"
  version "2.1.4-ocv.4.15"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "ocv", because: "both install the ocv command"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v2.1.4-ocv.4.15/ocv-darwin-arm64.zip"
      sha256 "b218148529819c1df152b6a11cc22a68b70617026dfebf2e86c025d2746d8553"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v2.1.4-ocv.4.15/ocv-darwin-x64-baseline.zip"
      sha256 "e2b9a36ae6d577f13150fb4b64d7e36b4e53b945ee17883a6d72bdf54f8b64f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v2.1.4-ocv.4.15/ocv-linux-arm64.tar.gz"
      sha256 "93a4e233053fa903aa1e9967a1b392bd60146a4102f3d5196701792440a87d17"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v2.1.4-ocv.4.15/ocv-linux-x64-baseline.tar.gz"
      sha256 "cdbb12ba943f2d51cb2d9b17c420d8c9dfdc620fd46b61689c24920f8c5a0b8f"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end
end
