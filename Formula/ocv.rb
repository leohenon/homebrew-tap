class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.32-ocv.3.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.32-ocv.3.32/ocv-darwin-arm64.zip"
      sha256 "9027f6cff39d8f27b10d320572320ec2eb0c48bda8d97869a18edb47f0b87e6d"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.32-ocv.3.32/ocv-darwin-x64.zip"
      sha256 "e36e00590dfa2d71e8d9951329e045c91577654ef0634640ce2f8db093139e75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.32-ocv.3.32/ocv-linux-arm64.tar.gz"
      sha256 "161e7c9df3794e3260d7b51ec749114a5f8c94928db209dbfae8bfa9892b2022"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.32-ocv.3.32/ocv-linux-x64.tar.gz"
      sha256 "84e07599d7f2daac80f950589844232520429a44695c1a53fc2c4f2a44a7fcc8"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
