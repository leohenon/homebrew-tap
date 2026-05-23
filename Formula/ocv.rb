class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.9-ocv.3.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.9-ocv.3.63/ocv-darwin-arm64.zip"
      sha256 "b7059f230c087d64d3f64547b8fe4c8f5535cad6ad367434c0cc92a3fdd048b2"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.9-ocv.3.63/ocv-darwin-x64.zip"
      sha256 "aa8679c1b7584e993e3d3325ee0875b5515da3ad3ebb3972211c0979b52e46c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.9-ocv.3.63/ocv-linux-arm64.tar.gz"
      sha256 "e5280ddc8fa49fd1edd9271d61b03e43fd8a5c6687b703b78f9621977c31438b"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.9-ocv.3.63/ocv-linux-x64.tar.gz"
      sha256 "feb817c05d159a601d8a96cc4479d9685b0dc603d5cb244da4f352e8c20ea07b"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
