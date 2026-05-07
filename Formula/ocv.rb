class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.40-ocv.3.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.40-ocv.3.35/ocv-darwin-arm64.zip"
      sha256 "2ccdfd0faaef69d773f017d409c323a9d22a16a0c9fabf0080af8096f7fa8b84"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.40-ocv.3.35/ocv-darwin-x64.zip"
      sha256 "06d48dd7a51c080202c5c4a6dc79d6e89a425eb0065374bcab3ed972214b4033"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.40-ocv.3.35/ocv-linux-arm64.tar.gz"
      sha256 "39f52057dc6a45776bd216e35fd2b8334bbbe0aad6b5807c3df39e0b373126fc"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.40-ocv.3.35/ocv-linux-x64.tar.gz"
      sha256 "6c84adfec0b13f751f607964fbd78d6596f7569547c68e558d114bb7ec9a07fe"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
