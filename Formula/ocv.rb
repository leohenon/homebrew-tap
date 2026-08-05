class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.13-ocv.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.13-ocv.4.10/ocv-darwin-arm64.zip"
      sha256 "9047db044577139e91fe2e965ac65ad90608098f625ecd609bf964f74cffbb08"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.13-ocv.4.10/ocv-darwin-x64.zip"
      sha256 "46f04bf7c2ae3c8d6108cae418acbc75b3a2ef12f864bcd3a418e5bfed12cde5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.13-ocv.4.10/ocv-linux-arm64.tar.gz"
      sha256 "3a48a4e1ff2495a3a70202c825012fb31e2778c2e7cc3d13e129e93d32d18fe0"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.13-ocv.4.10/ocv-linux-x64.tar.gz"
      sha256 "8549080406ba88f537ab1c09c657d4d4532ab65c8539f87aef8ff5e63c66b7b3"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
