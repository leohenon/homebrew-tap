class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.24-ocv.3.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.24-ocv.3.28/ocv-darwin-arm64.zip"
      sha256 "4f883b41ce768630707b38b8371768766273829f245f88c772580619a0ec8a00"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.24-ocv.3.28/ocv-darwin-x64.zip"
      sha256 "397fb511da94af92de7d7283ae634801f6554c93e4292f5336abd74b73f9b7ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.24-ocv.3.28/ocv-linux-arm64.tar.gz"
      sha256 "f1a078a2c147ea6b17d2d8af85057a6000329851bf01aff36fcfe9e081d49887"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.24-ocv.3.28/ocv-linux-x64.tar.gz"
      sha256 "ac6952aa9d0964edbf0c8670dcd8cfede58116463ef540bd42896424c1ceabda"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
