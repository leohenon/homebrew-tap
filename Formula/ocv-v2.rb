# typed: false
# frozen_string_literal: true

class OcvV2 < Formula
  desc "OpenCode V2 with first-class Vim and transcript copy modes"
  homepage "https://github.com/leohenon/opencode-vim"
  version "2.3.0-ocv.4.15"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "ocv", because: "both install the ocv command"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v2.3.0-ocv.4.15/ocv-darwin-arm64.zip"
      sha256 "6cee9464bc985fd0c1f189089c39358d7780a2a831ba48633d1aeeb3c0395f44"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v2.3.0-ocv.4.15/ocv-darwin-x64-baseline.zip"
      sha256 "460f9d7eca4765bb2721348477c7a3543ee065062caee32ff3a1b378bb223318"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v2.3.0-ocv.4.15/ocv-linux-arm64.tar.gz"
      sha256 "2fcbc601ba611dd005a62507cc036df843ad4354b06cf8ce89c03277f9797df9"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v2.3.0-ocv.4.15/ocv-linux-x64-baseline.tar.gz"
      sha256 "9181f0ed15134610d3b35f94ecf2707708628f4cdf2072495301af6d791d9b59"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end
end
