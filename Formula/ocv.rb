class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.8-ocv.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.8-ocv.4.10/ocv-darwin-arm64.zip"
      sha256 "9cf8614347bcdfb25a9c0150acc91b381aab27a8e1df0734c4e48f19c2b6484f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.8-ocv.4.10/ocv-darwin-x64.zip"
      sha256 "39e3adead4ed33a9e2f0a2c6460e3c54b1aa3bdfb91624f3d7c5aaaaaeffc96e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.8-ocv.4.10/ocv-linux-arm64.tar.gz"
      sha256 "5a43556b128c74b189cedad4da9eaa3cc046f092564f588534855caa7276fb55"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.8-ocv.4.10/ocv-linux-x64.tar.gz"
      sha256 "7c9acb762d4e3efecbe139f2d31d5e3aa8c9b47dde7f0faead1955d5f8190691"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
