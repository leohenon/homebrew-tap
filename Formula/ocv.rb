class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.39-ocv.3.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.39-ocv.3.34/ocv-darwin-arm64.zip"
      sha256 "0c2572182ebb3c9ad7d7b6b67356f177957cef139c8067fa3615f6ae5a87a686"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.39-ocv.3.34/ocv-darwin-x64.zip"
      sha256 "16283e3d63d1f62ee5a894ddb648c99aeb1a08688e680fff8eca11a882fce0b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.39-ocv.3.34/ocv-linux-arm64.tar.gz"
      sha256 "c7d580b8a5fcdd4e3b264b26fd16ce516aabc905638a7b8f5908eaa4c474516a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.39-ocv.3.34/ocv-linux-x64.tar.gz"
      sha256 "6fcd3a1243179cc21a3ea27ffc6ea25e0a310e3a755356efc4a9a383f0a0929e"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
